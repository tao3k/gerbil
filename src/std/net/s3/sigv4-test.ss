;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; AWS Signature Version 4 — canonical query and signing tests.

(export sigv4-test)

(import (only-in :std/test test-suite test-case check)
        (only-in :std/crypto/digest sha256)
        (only-in :std/encoding/hex hex-encode)
        (only-in ./sigv4 aws4-canonical-query-string aws4-canonical-request aws4-sign aws4-auth))

(def host "storage.googleapis.com")
(def uri "/")
(def date "20250225")
(def timestamp (string-append date "T052229Z"))
(def hash (sha256 #u8()))
(def hex (hex-encode hash))
(def scope (string-append date "/us/s3"))
(def access-key "my-access-key")
(def secret-key "my-secret-key")
(def headers [["host" :: host] ["x-amz-content-sha256" :: hex] ["x-amz-date" :: timestamp]])

(def sigv4-test
  (test-suite "test :std/net/s3/sigv4"
    (test-case "aws4-auth"
      (check (aws4-auth
              scope
              (aws4-canonical-request verb: 'GET uri: uri query: [] hash: hash headers: headers)
              timestamp
              headers
              secret-key
              access-key)
             =>
             "AWS4-HMAC-SHA256 Credential=my-access-key/20250225/us/s3/aws4_request,SignedHeaders=host;x-amz-content-sha256;x-amz-date,Signature=e11e1b2a37e0448922b3f911e716d028760a807f94f7b5994f58eb3ce3a5bd7f"))

    (test-case "aws4-sign"
      (check (hex-encode
              (aws4-sign
               scope
               (aws4-canonical-request verb: 'GET uri: uri query: [] hash: hash headers: headers)
               timestamp
               secret-key))
             =>
             "e11e1b2a37e0448922b3f911e716d028760a807f94f7b5994f58eb3ce3a5bd7f"))

    (test-case "aws4-canonical-query-string sorting, duplicate keys, empty values and spaces"
      (check (aws4-canonical-query-string
              [["space" :: "a b"]
               ["Action" :: "List"]
               ["empty" :: ""]
               ["Action" :: "Get"]])
             =>
             "Action=Get&Action=List&empty=&space=a%20b"))

    (test-case "aws4-canonical-request"
      (check (aws4-canonical-request verb: 'GET uri: uri query: [] hash: hash headers: headers)
             =>
             (string-join
              ["GET"
               uri
               ""
               (string-append "host:" host)
               (string-append "x-amz-content-sha256:" hex)
               (string-append "x-amz-date:" timestamp)
               ""
               "host;x-amz-content-sha256;x-amz-date"
               hex]
              #\newline)))

    (test-case "canonical header whitespace"
      (check
       (aws4-canonical-request
        verb: 'GET uri: "/" query: [] hash: hash
        headers: [["X-Spaces" :: "  foo   bar  "]
                  ["X-Tabs" :: "\t foo\t \tbar \t"]
                  ["X-Empty" :: " \t "]
                  ["Host" :: host]])
       =>
       (string-join
        ["GET" "/" ""
         (string-append "host:" host)
         "x-empty:"
         "x-spaces:foo bar"
         "x-tabs:foo bar"
         ""
         "host;x-empty;x-spaces;x-tabs"
         hex]
        #\newline)))

    (test-case "duplicate headers combine in input order and are signed once"
      (def repeated
        [["X-Tag" :: " z "]
         ["Host" :: host]
         ["x-tag" :: " a   b "]
         ["X-TAG" :: ""]])
      (def combined [["host" :: host] ["x-tag" :: "z,a b,"]])
      (def request
        (aws4-canonical-request
         verb: 'GET uri: "/" query: [] hash: hash headers: repeated))
      (check request
             =>
             (string-join
              ["GET" "/" ""
               (string-append "host:" host)
               "x-tag:z,a b,"
               ""
               "host;x-tag"
               hex]
              #\newline))
      (check (aws4-auth scope request timestamp repeated secret-key access-key)
             => (aws4-auth scope request timestamp combined secret-key access-key)))))
