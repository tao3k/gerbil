;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; AWS S3 interfaces — bucket and object operations.

(export #t)

(interface S3Bucket
  (get (name : :string))
  => :u8vector

  (exists? (name : :string))
  => :boolean

  (put! (name : :string)
        (data : :u8vector)
        content-type: (content-type : :string := "application/octet-stream"))
  => :void

  (delete! (name : :string))
  => :void

  ;; src is bucket/object; dest is an object name in this bucket.
  (copy-to! (src : :string) (dest : :string))
  => :void

  (list-objects)
  => :list)

(interface S3Client
  (get-bucket (name : :string))
  => S3Bucket

  (create-bucket! (name : :string))
  => S3Bucket

  (delete-bucket! (name : :string))
  => :void

  (bucket-exists? (name : :string))
  => :boolean

  (list-buckets)
  => :list)
