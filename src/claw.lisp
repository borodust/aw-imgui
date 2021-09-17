(claw.wrapper:defwrapper (:aw-imgui
                          (:system :aw-imgui/wrapper)
                          (:headers "imgui.h"
                                    "imstb_textedit.h"
                                    "imstb_truetype.h")
                          (:defines "IMGUI_DISABLE_DEMO_WINDOWS" 1)
                          (:includes :imgui-includes)
                          (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                                    ((:and :aarch64 :android) "aarch64-linux-android")
                                    ((:and :x86-64 :windows) "x86_64-pc-windows-gnu"))
                          (:persistent t :depends-on (:claw-utils))
                          (:language :c++)
                          (:include-definitions "^ImGui" "^IMGUI_"))
  :in-package :%imgui
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :with-adapter (:static
                 :path "src/lib/adapter.cxx")
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer)))
