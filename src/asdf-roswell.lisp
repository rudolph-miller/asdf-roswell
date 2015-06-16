(in-package :cl-user)
(defpackage asdf-roswell
  (:use :cl :asdf))
(in-package :asdf-roswell)

(defclass ros (source-file)
  ((type :initform "ros")))

(defmethod perform ((op load-op) (component ros))
  (declare (ignore op))
  #+ros.init
  (load (compile-file-pathname* (component-pathname component)))
  #-ros.init
  (warning "roswell/init.lisp is not loaded."))

(defmethod perform ((op compile-op) (component ros))
  (declare (ignore op))
  #+ros.init
  (compile-file* (component-pathname component))
  #-ros.init
  (warning "roswell/init.lisp is not loaded."))

(import 'ros :asdf)
