;; -*- Gerbil -*-
;; gerbil stdlib build spec
(def (gerbil-libdir) (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))

(def (build-spec . _)
  `(;; v0.19 stdlib
    (gxc: "build-config" (extra-inputs: ("build-features.ss")))
    "interactive"
    "error"
    "interface"
    "deprecation"

    "debug/DBG"

    "list/list-builder"
    "list/list"
    "list/alist"
    "list/plist"
    "list/walist"
    "list/random"

    "iter/interface"
    "iter/iterators"
    "iter/macros"
    "iter/api"
    "iter"

    "string/misc"
    "string/path"
    "string/utf8"
    "string/stringer"

    "cache"
    "sync/rwlock"
    "sync/spinlock"

    "net/address/types"
    "net/address/parser"
    "net/address/stringer"
    "net/address/resolver"
    "net/address/serde"
    "net/address/api"
    "net/address"

    "ffi"
    "os/error"
    (gxc: "os/device" ,@(include-gambit-sharp))
    (gxc: "os/file" "-cc-options" "-D_LARGEFILE64_SOURCE")
    "os/fcntl"
    "os/time"
    "os/sockaddr"
    (gxc: "os/socket" "-cc-options" "-D _GNU_SOURCE")
    "os/sockopt"
    "os/hostname"

    "io/interface/base"
    "io/interface/bio"
    "io/interface/socket"
    "io/interface"
    "io/bio/types"
    "io/bio/buffer"
    "io/bio/macros"
    "io/bio/cache"
    "io/bio/input"
    "io/bio/output"
    "io/bio/reader"
    "io/bio/writer"
    "io/bio/delimited"
    "io/bio/memory"
    "io/bio/srcsnk"
    "io/bio/port"
    "io/bio/api"
    "io/file"
    "io/tempfile"
    "io/util"
    "io/counter"
    "io/delimited"
    "io/detachable"
    "io/dummy"
    "io/socket/types"
    "io/socket/sockaddr"
    "io/socket/socket"
    "io/socket/basic"
    "io/socket/client"
    "io/socket/stream"
    "io/socket/server"
    "io/socket/datagram"
    "io/socket/api"
    "io/api"
    "io"

    "serde/interface"
    "serde/util"
    "serde/scan"
    "serde/scanner"
    "serde/serialize"
    "serde/deserialize"
    "serde/interned"
    "serde/binary"
    "serde/marshal"
    (gxc: "serde/unmarshal" ,@(include-gambit-sharp))
    "serde/serde-test-support"

    "format/ascii"
    "format/format-string"
    "format/env"
    "format/ioutil"
    "format/writer"
    (gxc: "format/reader" ,@(include-gambit-sharp))
    "format/io"
    "format/format"
    "format/api"
    "format"

    "assert"

    "time/time"
    "time/timeout"
    "time/precise"

    "sync/atom"
    "sync/channel"
    "sync/completion"
    "sync/barrier"
    "sync/wg"

    "make"
    "build-script"

    "test/base"
    "test/unit"
    "test"

    "values"

    "hash/types"
    "hash/misc"

    "struct/queue"

    "cli/getopt"
    "cli/multicall"
    "cli/print-exit"
    "cli/shell"

    "text/pregexp"
    "text/parser/char-set"
    "text/parser/base"
    "text/parser/ll1"
    "text/template"

    (gxc: "crypto/libcrypto"
          "-cc-options" ,(append-options (cppflags "libcrypto" "") "-Wno-discarded-qualifiers" "-Wno-deprecated-declarations" "-Wno-implicit-function-declaration")
          "-ld-options" ,(ldflags "libcrypto" "-lcrypto"))
    "crypto/error"
    "crypto/random"
    "crypto/digest"
    "crypto/cipher"
    "crypto/pkey"
    "crypto/kdf"
    "crypto/hmac"

    ,(cond-expand
      (darwin
       `(gxc: "net/ssl/libssl"
	      "-cc-options" ,(append-options (cppflags "libssl" "") "-Wno-discarded-qualifiers")
	      "-ld-options" ,(apply append-options
			               (ldflags "libssl" "-lssl")
			               (ldflags "libcrypto" "-lcrypto")
                           (if (enable-shared?)
                             [(string-append "-L" (gerbil-libdir)) "-lgambit"]
                             []))))
      (else
       `(gxc: "net/ssl/libssl"
	      "-ld-options" ,(ldflags "libssl" "-lssl"))))
    "net/ssl/error"
    "net/ssl/interface"
    "net/ssl/socket"
    "net/ssl/client"
    "net/ssl/server"
    "net/ssl/api"
    "net/ssl"

    "encoding/base64"
    "encoding/hex"
    "encoding/json/env"
    "encoding/json/writer"
    "encoding/json/reader"
    "encoding/json/io"
    "encoding/json/util"
    "encoding/json/api"
    "encoding/json"

    "vector/u8vector"
    "vector/extensible"
    "vector/vector"

    "number/misc"
    "number/prime"
    "number/decimal"
    "number/writer"

    "misc/process"
    "misc/ports"

    "source"

    ,@(if config-enable-zlib
        `((gxc: "encoding/zlib"
                "-cc-options" ,(cppflags "zlib" "")
                "-ld-options" ,(ldflags "zlib" "-lz")))
        '())

    "net/uri"
    "net/url"
    "net/http/common/ioutil"
    "net/http/common/chunked"
    "net/http/client/request"
    "net/http/client/methods"
    "net/http/client/util"
    "net/http/client/api"
    "net/http/client"
    "net/request"

    "log/interface"
    "log/level"
    "log/proto"
    "log/macros"
    "log/console"
    "log/system"
    "log/user"
    "log/format"
    "log/default"
    "log/rotate"
    "log/compress"
    "log/api"
    "log"

    "net/mime/struct"
    "net/mime/types"
    "net/mime/file"

    "net/http/server/interface"
    "net/http/server/status"
    "net/http/server/handlers/empty"
    "net/http/server/handlers/file"
    "net/http/server/handlers/directory"
    "net/http/server/handlers/closure"
    "net/http/server/mux/static"
    "net/http/server/request"
    "net/http/server/server"
    "net/http/server/api"
    "net/http/server"

    "net/json-rpc"

    "db/interface"
    "db/db"
    "db/cache"
    "db/query"
    ,@(if config-enable-sqlite
        `((gxc: "db/sqlite-driver"
                "-cc-options" ,(cppflags "sqlite3" "")
                "-ld-options" ,(append-options (ldflags "sqlite3" "-lsqlite3") "-lm"))
          "db/sqlite")
        '())
    "db"

    "encoding/multibase"

    "ensemble/interface/ucan"
    "ensemble/interface/message"
    "ensemble/interface/actor"
    "ensemble/interface/network"
    "ensemble/interface/address"
    "ensemble/interface/broadcast"
    "ensemble/interface/host"
    "ensemble/interface/protocol"
    "ensemble/interface/event"
    "ensemble/interface"

    "ensemble/ucan/cap"
    "ensemble/ucan/did"
    "ensemble/ucan/db"
    "ensemble/ucan/context"
    "ensemble/ucan/security"
    "ensemble/ucan/ext"

    "ensemble/actor/types"
    "ensemble/actor/util"
    "ensemble/actor/macros"
    "ensemble/actor/reactor"
    "ensemble/actor/actor"

    "ensemble/config"

    "ensemble/network/base"
    "ensemble/network/connector"
    "ensemble/network/listener"
    "ensemble/network/handshake"
    "ensemble/network/connection"
    "ensemble/network/stream"
    "ensemble/network/network"
    "ensemble/network"

    "ensemble/broadcast"
    "ensemble/broadcast/broadcast"

    "ensemble/host/types"
    "ensemble/host/db"
    "ensemble/host/bus"
    "ensemble/host/actor-dispatch"
    "ensemble/host/actor-context"
    "ensemble/host/actor-handler"
    "ensemble/host/actor-space"
    "ensemble/host/monitor"
    "ensemble/host/resolver"
    "ensemble/host/stream-cache"
    "ensemble/host/basic"
    "ensemble/host/server"

    "ensemble/tls"

    "ensemble/svc/loader/protocol"
    "ensemble/svc/loader/server"
    ))
