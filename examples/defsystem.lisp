(defsystem roswell-scripts
  :author "Rudolph Miller"
  :license "MIT"
  :defsystem-depends-on (:asdf-roswell)
  :depends-on ()
  :components ((:module "roswell"
                :components
                ((:ros "useful-script")))))
