;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Public API facade for :std/sync/fiber (Work-Stealing Structured Concurrency)

(import ./state
        ./nursery
        ./timer
        ./promise
        ./channel
        ./mutex
        ./scheduler
        ./parallel)
(export
  run-fibers
  in-fiber?
  with-nursery
  Nursery
  nursery?
  nursery-cancel!
  nursery-cancelled?
  fiber-spawn
  fiber-yield
  fiber-sleep!
  fiber-worker-count
  FiberChannel
  make-fiber-channel
  fiber-channel?
  fiber-send!
  fiber-try-send!
  fiber-recv!
  fiber-try-recv!
  fiber-channel-close!
  fiber-channel-closed?
  FiberPromise
  make-fiber-promise
  fiber-promise?
  fiber-promise-resolved?
  fiber-promise-resolve!
  fiber-promise-await!
  FiberMutex
  make-fiber-mutex
  fiber-mutex?
  fiber-mutex-lock!
  fiber-mutex-unlock!
  with-fiber-lock
  FiberSemaphore
  make-fiber-semaphore
  fiber-semaphore?
  fiber-semaphore-acquire!
  fiber-semaphore-release!
  with-fiber-semaphore
  parallel-map
  parallel-for-each)
