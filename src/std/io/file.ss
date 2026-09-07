;;; -*- Gerbil -*-
;;; © vyzo
;;; file IO
(import :std/error
        :std/interface
        :std/time/timeout
        :std/os/device
        :std/os/file
        :std/os/fcntl
        :std/os/flock
        ./interface)
(export open-file-reader
        open-file-reader/lock
        open-file-writer
        open-file-writer/lock
        call-with-file-reader
        call-with-file-reader/lock
        call-with-file-writer
        call-with-file-writer/lock
        default-file-reader-flags
        default-file-writer-flags
        (struct-out FileIO
                    InputFileIO
                    OutputFileIO
                    InputOutputFileIO)
        open-input-file-io
        open-input-file-io/lock
        open-output-file-io
        open-output-file-io/lock
        open-input-output-file-io
        open-input-output-file-io/lock)
(declare (not safe))

(defstruct FileIO
  ((dev :- FileDevice))
  transparent:  #f)

(defclass (InputFileIO FileIO) ())
(defclass (OutputFileIO FileIO) ())
(defclass (InputOutputFileIO InputFileIO OutputFileIO) ())

(defmethod {read InputFileIO}
  (lambda (self output output-start output-end input-need)
    (do-check-device-input file-io-read self.dev
      (let loop ((output-start output-start :- :fixnum)
                 (input-need   input-need   :- :fixnum)
                 (result       0            :- :fixnum))
        => :fixnum
        (if (fx< output-start output-end)
          (let (read (device-read self.dev output output-start output-end))
            (cond
             ((fx< read 0)
              (device-wait-input! self.dev !NoTimeout)
              (loop output-start input-need result))
             ((fx= read 0)
              (if (fx> input-need result)
                (raise-premature-end-of-input file-io-read input-need)
                result))
             ((fx>= read input-need)
              (fx+ result read))
             (else
              (loop (fx+ output-start read) (fx- input-need read) (fx+ result read)))))
          result))))
  interface: Reader)

(defmethod {close InputFileIO}
  (lambda (self)
    (device-close self.dev DIRECTION-IN))
  interface: Closer)

(@implement Closer InputFileIO)
(@implement Reader InputFileIO)

(defmethod {write OutputFileIO}
  (lambda (self input input-start input-end)
    (do-check-device-output file-io-write self.dev
      (let loop ((input-start input-start :- :fixnum)
                 (result      0           :- :fixnum))
        => :fixnum
        (if (fx< input-start input-end)
          (let (wrote (device-write self.dev input input-start input-end))
            (cond
             ((fx< wrote 0)
              (device-wait-output! self.dev !NoTimeout)
              (loop input-start result))
             (else
              (loop (fx+ input-start wrote) (fx+ result wrote)))))
          result))))
  interface: Writer)

(defmethod {close OutputFileIO}
  (lambda (self)
    (device-close self.dev DIRECTION-OUT))
  interface: Closer)

(@implement Closer OutputFileIO)
(@implement Writer OutputFileIO)

(defmethod {seek FileIO}
  (lambda (self position whence)
    (file-device-seek self.dev position whence))
  interface: Seeker)

(@implement Seeker InputFileIO)
(@implement Seeker OutputFileIO)

(defmethod {close InputOutputFileIO}
  (lambda (self)
    (device-close self.dev DIRECTION-INOUT))
  interface: Closer)

(@implement Closer InputOutputFileIO)

(defrule (open-file-io path flags mode make)
  (make dev: (open-file-device path flags mode)))

(defrule (open-file-io/lock path flags mode timeo op direction make)
  (make dev: (open-file/lock path op timeo
                             direction: direction
                             flags: flags
                             mode: mode)))

(def (open-input-file-io (path  : :string)
                         (flags : :fixnum)
                         (mode  : :fixnum))
  => InputFileIO
  (open-file-io path flags mode make-InputFileIO))

(def (open-input-file-io/lock (path  : :string)
                              (flags : :fixnum)
                              (mode  : :fixnum)
                              (timeo : :t := !NoTimeout)
                              op: (op : :fixnum := LOCK_SH))
  => InputFileIO
  (open-file-io/lock path flags mode timeo op DIRECTION-IN make-InputFileIO))

(def (open-output-file-io (path  : :string)
                          (flags : :fixnum)
                          (mode  : :fixnum))
  => OutputFileIO
  (open-file-io path flags mode make-OutputFileIO))

(def (open-output-file-io/lock (path  : :string)
                               (flags : :fixnum)
                               (mode  : :fixnum)
                               (timeo : :t := !NoTimeout)
                               op: (op : :fixnum := LOCK_EX))
  => OutputFileIO
  (open-file-io/lock path flags mode timeo op DIRECTION-OUT make-OutputFileIO))

(def (open-input-output-file-io (path  : :string)
                                (flags : :fixnum)
                                (mode  : :fixnum))
  => InputOutputFileIO
  (open-file-io path flags mode make-InputOutputFileIO))

(def (open-input-output-file-io/lock (path  : :string)
                                     (flags : :fixnum)
                                     (mode  : :fixnum)
                                     (timeo : :t := !NoTimeout)
                                     op: (op : :fixnum := LOCK_EX))
  => InputOutputFileIO
  (open-file-io/lock path flags mode timeo op DIRECTION-INOUT make-InputOutputFileIO))

(def default-file-reader-flags O_NOATIME)

(def (open-file-reader (path : :string)
                       flags: (flags : :fixnum := default-file-reader-flags))
  => Reader
  (let* ((flags (fxior flags O_RDONLY))
         (io    (open-input-file-io (path-expand path) flags 0)))
    (Reader io)))

(def (open-file-reader/lock (path  : :string)
                            (timeo : :t := !NoTimeout)
                            op:    (op    : :fixnum := LOCK_SH)
                            flags: (flags : :fixnum := default-file-reader-flags))
  => Reader
  (let* ((flags (fxior flags O_RDONLY))
         (io    (open-input-file-io/lock
                 (path-expand path) flags 0 timeo op: op)))
    (Reader io)))

(def default-file-writer-flags
  (fxior O_CREAT O_TRUNC))

(def (open-file-writer (path : :string)
                       flags: (flags : :fixnum := default-file-writer-flags)
                       mode:  (mode  : :fixnum := #o644))
  => Writer
  (let* ((flags (fxior flags O_WRONLY))
         (io (open-output-file-io (path-expand path) flags mode)))
    (Writer io)))

(def (open-file-writer/lock (path  : :string)
                            (timeo : :t := !NoTimeout)
                            op:    (op    : :fixnum := LOCK_EX)
                            flags: (flags : :fixnum := default-file-writer-flags)
                            mode:  (mode  : :fixnum := #o644))
  => Writer
  (let* ((flags (fxior flags O_WRONLY))
         (io    (open-output-file-io/lock
                 (path-expand path) flags mode timeo op: op)))
    (Writer io)))

(def (call-with-file-reader (path : :string)
                            (proc : :procedure)
                            flags: (flags : :fixnum := default-file-reader-flags))
  => :t
  (using (reader (open-file-reader path flags: flags)
                 : Reader)
    (unwind-protect
      (proc reader)
      (reader.close))))

(def (call-with-file-reader/lock (path  : :string)
                                 (proc  : :procedure)
                                 (timeo : :t := !NoTimeout)
                                 op:    (op    : :fixnum := LOCK_SH)
                                 flags: (flags : :fixnum := default-file-reader-flags))
  => :t
  (using (reader (open-file-reader/lock path timeo op: op flags: flags)
                 : Reader)
    (unwind-protect
      (proc reader)
      (reader.close))))

(def (call-with-file-writer (path : :string)
                            (proc : :procedure)
                            flags: (flags : :fixnum := default-file-writer-flags)
                            mode:  (mode  : :fixnum := #o644))
  => :t
  (using (writer (open-file-writer path flags: flags mode: mode)
                 : Writer)
    (unwind-protect
     (proc writer)
     (writer.close))))

(def (call-with-file-writer/lock (path  : :string)
                                 (proc  : :procedure)
                                 (timeo : :t := !NoTimeout)
                                 op:    (op    : :fixnum := LOCK_EX)
                                 flags: (flags : :fixnum := default-file-writer-flags)
                                 mode:  (mode  : :fixnum := #o644))
  => :t
  (using (writer (open-file-writer/lock
                  path timeo op: op flags: flags mode: mode)
                 : Writer)
    (unwind-protect
     (proc writer)
     (writer.close))))
