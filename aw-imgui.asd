(asdf:defsystem :aw-imgui
  :description "Bindings to Dear ImGui"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:aw-imgui-bindings))


(asdf:defsystem :aw-imgui/wrapper
  :description "Wrapper generator for Dear ImGui"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils)
  :pathname "src/"
  :serial t
  :components ((:file "claw")
               (:module :imgui-includes :pathname "lib/imgui/")))
