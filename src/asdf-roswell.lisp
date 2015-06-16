(in-package :cl-user)
(defpackage asdf-roswell
  (:use :cl :asdf))
(in-package :asdf-roswell)

(defclass ros (cl-source-file)
  ((type :initform "ros")))

(import 'ros :asdf)
