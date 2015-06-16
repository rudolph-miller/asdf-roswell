#|
  This file is a part of asdf-roswell project.
  Copyright (c) 2015 Rudolph Miller (chopsticks.tk.ppfm@gmail.com)
|#

#|
  ASDF Integration of Roswell Scripts.
  Author: Rudolph Miller (chopsticks.tk.ppfm@gmail.com)
|#

(in-package :cl-user)
(defpackage asdf-roswell-asd
  (:use :cl :asdf))
(in-package :asdf-roswell-asd)

(defsystem asdf-roswell
  :version "0.1"
  :author "Rudolph Miller"
  :license "MIT"
  :homepage "https://github.com/Rudolph-Miller/asdf-roswell"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "asdf-roswell"))))
  :description "ASDF Integration of Roswell Scripts."
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.md"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op asdf-roswell-test))))
