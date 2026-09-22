# Ensemble TLS Helpers

Import `:std/ensemble/network/tls` for DID-named self-signed TLS contexts and
certificate identity extraction. The current helpers support Ed25519 keys,
matching the [DID module](../ucan/did.md).

## Procedures

| Procedure | Argument | Result |
| --- | --- | --- |
| `make-tls-context` | `PrivKey` | Native `SSL_CTX` object |
| `did->hostname` | DID string | Internal hostname string |
| `tls-certificate->hostname+did` | Native X509 certificate | Two values: hostname, canonical DID |

`make-tls-context` derives the host name from the supplied key and installs a
self-signed certificate. It uses the shared SSL context builder, which requires
TLS 1.3 and a certificate from each peer. The supplied private key remains owned
by the caller; the context retains its own native reference. Keep the context
alive while listeners or connections use it.

## Hostname Encoding

`did->hostname` decodes the DID before encoding its complete multicodec-plus-key
payload as lowercase, unpadded RFC 4648 Base32, followed by `.internal`. There is
no extra multibase prefix. Equivalent accepted DID spellings produce the same name.

For Ed25519, the payload consists of codec bytes `#xed #x01` and the 32 public-key
bytes. It yields a 55-character DNS label and a 64-character complete hostname,
within both the DNS label limit and the X509 common-name limit.

Base64url DID suffixes are not copied directly: they can contain underscores and
use case distinctions that DNS hostnames cannot preserve. The internal domain is
a certificate naming convention, not a requirement to resolve those names in DNS.

## Peer Identity

`tls-certificate->hostname+did` returns the certificate's claimed common name
first and a canonical DID derived from its actual public key second. It releases
the temporary public-key reference after extraction. Missing public keys or common
names raise errors; the supplied certificate remains owned by its existing holder.
Missing common name or unsupported key type raises `TLSPeerIdentityError`, an
IOError subclass. The handshake constructor uses the same type for missing peer
certificates and expected-DID mismatch. Native key extraction/allocation, crypto,
and contract errors propagate without being relabeled as peer policy failures.

SSL client/server negotiation failures use `SSLHandshakeError` (an SSLError
subclass), retaining native results. This describes the failure stage, not a
guarantee of peer fault. Known native allocation, internal and syscall failures remain
terminal SSLError, as do local SSL setup errors. Timeout and Closed remain distinct.

**The name is not proof of the DID.** The self-signed TLS policy permits peers to
prove possession of their own keys without a common CA. A peer can nevertheless
put another host's name into a certificate signed with its own key. Network code
must compare the extracted DID against the expected peer DID before accepting
the connection, and should check that the claimed name equals `did->hostname`
of that extracted DID. Hostname checking alone is insufficient.

Successful TLS setup is also distinct from UCAN authorization. Admission and
stream capability checks belong to the network and capability-context layers.

## Upgrade Ownership

Both SSL close paths use one internal `with-ssl-socket-close` macro. It catches
device-close failure inside the shared write lock, releases native SSL there,
then rethrows the identical exception after unlocking. An `unwind-protect` alone
is insufficient: the rwlock exception handler unlocks before dynamic-wind cleanup,
and a plain failing thread may terminate without that unwind. The regression
closes a real device and raises at the close-expression boundary, exercising the
shared macro without corrupting a descriptor or adding a production injection hook.

Raw and upgraded sockets share the underlying device and synchronization lock.
An owner may close its retained raw view while TLS setup finishes. Closing the
upgraded view must still release its independently owned native SSL state; both
abortive close and writer/reader shutdown now do so even when the device is closed.
Repeated/concurrent close is serialized, and native release disables the foreign
object's finalizer. Peer-certificate acquisition also holds the shared lock and
checks device liveness before touching SSL, preventing lookup after release.

The connector attaches raw transport before TLS and the upgraded view before
constructing Handshake. Rejection of a late upgrade closes the upgraded view.
Tests cover silent TLS interruption, this late-attachment ordering, explicit native
release after raw closure, and repeated/concurrent SSL closure. These tests do not
claim full Network shutdown or Connection publication integration.
