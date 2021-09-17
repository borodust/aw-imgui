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
  :serial t
  :components ((:file "src/claw")
               (:module :imgui-includes :pathname "src/lib/imgui/")))
