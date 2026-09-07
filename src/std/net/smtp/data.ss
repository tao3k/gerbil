;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; SMTP DATA encoding
(import :std/interface
        :std/io/interface)
(export smtp-data-writer
        write-data
        end-data)

(def CR 13)
(def LF 10)
(def FULLSTOP 46)

(interface (SMTPDataWriter BufferedWriter)
  (write-data (bytes : :u8vector)
              (start :~ (in-range? 0 (fxmax 1 (u8vector-length bytes)))
                     :- :fixnum := 0)
              (end :~ (in-range-inclusive? start (u8vector-length bytes))
                   :- :fixnum := (u8vector-length bytes)))
  => :void

  (end-data) => :void)

(defstruct smtp-output
  ((writer   :- BufferedWriter)
   (previous : :fixnum))
  final: #t)

;; Track the stream position explicitly, including raw command/header writes.
;; The delegate can be any BufferedWriter; flushing does not discard DATA state.
(def (smtp-data-writer (writer : BufferedWriter))
  => BufferedWriter
  (BufferedWriter (make-smtp-output writer LF)))

(defmethod {write smtp-output}
  (lambda (self bytes start end)
    (let (n (self.writer.write bytes start end))
      (when (fx> n 0)
        (set! self.previous (u8vector-ref bytes (fx- (fx+ start n) 1))))
      n))
  interface: BufferedWriter)

(defmethod {write-u8 smtp-output}
  (lambda (self byte)
    (let (n (self.writer.write-u8 byte))
      (when (fx> n 0)
        (set! self.previous byte))
      n))
  interface: BufferedWriter)

(defmethod {flush smtp-output}
  (lambda (self) (self.writer.flush))
  interface: BufferedWriter)

(defmethod {close smtp-output}
  (lambda (self) (self.writer.close))
  interface: Closer)

;; Permit start=end=0 for an empty chunk; the end contract bounds all reads.
(def (write-data (writer : SMTPDataWriter)
                 (bytes : :u8vector)
                 (start :~ (in-range? 0 (fxmax 1 (u8vector-length bytes)))
                        :- :fixnum := 0)
                 (end :~ (in-range-inclusive? start (u8vector-length bytes))
                      :- :fixnum := (u8vector-length bytes)))
  => :void
  (writer.write-data bytes start end))

(defmethod {write-data smtp-output}
  (lambda (self bytes start end)
    (let loop ((i start))
      (when (fx< i end)
        (let (byte (u8vector-ref bytes i))
          ;; Complete a bare CR before processing the next input byte.
          (when (and (fx= self.previous CR)
                     (not (fx= byte LF)))
            (self.writer.write-u8 LF)
            (set! self.previous LF))
          (cond
           ((fx= byte LF)
            (unless (fx= self.previous CR)
              (self.writer.write-u8 CR))
            (self.writer.write-u8 LF))
           (else
            (when (and (fx= byte FULLSTOP)
                       (fx= self.previous LF))
              (self.writer.write-u8 FULLSTOP))
            (self.writer.write-u8 byte)))
          (set! self.previous byte)
          (loop (fx+ i 1)))))
    (void))
  interface: SMTPDataWriter)

;; Finish a pending CR or unterminated line, append the terminator and flush.
(def (end-data (writer : SMTPDataWriter))
  => :void
  (writer.end-data))

(defmethod {end-data smtp-output}
  (lambda (self)
    (unless (fx= self.previous LF)
      (unless (fx= self.previous CR)
        (self.writer.write-u8 CR))
      (self.writer.write-u8 LF))
    (self.writer.write-u8 FULLSTOP)
    (self.writer.write-u8 CR)
    (self.writer.write-u8 LF)
    (self.writer.flush)
    (set! self.previous LF))
  interface: SMTPDataWriter)

(@implement BufferedWriter smtp-output)
(@implement SMTPDataWriter smtp-output)
