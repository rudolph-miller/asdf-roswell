(in-package :cl-user)
(defpackage asdf-roswell-test
  (:use :cl
        :asdf-roswell
        :prove))
(in-package :asdf-roswell-test)

(plan nil)

(finalize)
