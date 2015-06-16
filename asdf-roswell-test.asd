#|
  This file is a part of asdf-roswell project.
  Copyright (c) 2015 Rudolph Miller (chopsticks.tk.ppfm@gmail.com)
|#

(in-package :cl-user)
(defpackage asdf-roswell-test-asd
  (:use :cl :asdf))
(in-package :asdf-roswell-test-asd)

(defsystem asdf-roswell-test
  :author "Rudolph Miller"
  :license "MIT"
  :homepage "https://github.com/Rudolph-Miller/asdf-roswell"
  :depends-on (:asdf-roswell
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "asdf-roswell"))))
  :description "Test system for asdf-roswell"

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
