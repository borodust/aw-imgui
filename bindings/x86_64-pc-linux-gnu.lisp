(uiop:define-package :%imgui (:use))
(uiop:define-package :claw-imgui-bindings~pristine (:use :cl))
(common-lisp:in-package :claw-imgui-bindings~pristine)

(defparameter %imgui::+imgui-api+ nil)

(defparameter %imgui::+imgui-disable-demo-windows+ 1)

(defparameter %imgui::+imgui-has-table+ nil)

(defparameter %imgui::+imgui-impl-api+ nil)

(defparameter %imgui::+imgui-payload-type-color-3f+ "_COL3F")

(defparameter %imgui::+imgui-payload-type-color-4f+ "_COL4F")

(defparameter %imgui::+imgui-version+ "1.81")

(defparameter %imgui::+imgui-version-num+ 18100)

(cffi:defcenum (%imgui::im-gui-backend-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1369:6"
               (:none 0)
               (:has-gamepad 1)
               (:has-mouse-cursors 2)
               (:has-set-mouse-pos 4)
               (:renderer-has-vtx-offset 8))

(cffi:defcenum (%imgui::im-gui-button-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1475:6"
               (:none 0)
               (:mouse-button-left 1)
               (:mouse-button-right 2)
               (:mouse-button-middle 4)
               (:mouse-button-mask- 7)
               (:mouse-button-default- 1))

(cffi:defcenum (%imgui::im-gui-col- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1379:6"
               (:text 0)
               (:text-disabled 1)
               (:window-bg 2)
               (:child-bg 3)
               (:popup-bg 4)
               (:border 5)
               (:border-shadow 6)
               (:frame-bg 7)
               (:frame-bg-hovered 8)
               (:frame-bg-active 9)
               (:title-bg 10)
               (:title-bg-active 11)
               (:title-bg-collapsed 12)
               (:menu-bar-bg 13)
               (:scrollbar-bg 14)
               (:scrollbar-grab 15)
               (:scrollbar-grab-hovered 16)
               (:scrollbar-grab-active 17)
               (:check-mark 18)
               (:slider-grab 19)
               (:slider-grab-active 20)
               (:button 21)
               (:button-hovered 22)
               (:button-active 23)
               (:header 24)
               (:header-hovered 25)
               (:header-active 26)
               (:separator 27)
               (:separator-hovered 28)
               (:separator-active 29)
               (:resize-grip 30)
               (:resize-grip-hovered 31)
               (:resize-grip-active 32)
               (:tab 33)
               (:tab-hovered 34)
               (:tab-active 35)
               (:tab-unfocused 36)
               (:tab-unfocused-active 37)
               (:plot-lines 38)
               (:plot-lines-hovered 39)
               (:plot-histogram 40)
               (:plot-histogram-hovered 41)
               (:table-header-bg 42)
               (:table-border-strong 43)
               (:table-border-light 44)
               (:table-row-bg 45)
               (:table-row-bg-alt 46)
               (:text-selected-bg 47)
               (:drag-drop-target 48)
               (:nav-highlight 49)
               (:nav-windowing-highlight 50)
               (:nav-windowing-dim-bg 51)
               (:modal-window-dim-bg 52)
               (:count 53))

(cffi:defcenum (%imgui::im-gui-color-edit-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1488:6"
               (:none 0)
               (:no-alpha 2)
               (:no-picker 4)
               (:no-options 8)
               (:no-small-preview 16)
               (:no-inputs 32)
               (:no-tooltip 64)
               (:no-label 128)
               (:no-side-preview 256)
               (:no-drag-drop 512)
               (:no-border 1024)
               (:alpha-bar 65536)
               (:alpha-preview 131072)
               (:alpha-preview-half 262144)
               (:hdr 524288)
               (:display-rgb 1048576)
               (:display-hsv 2097152)
               (:display-hex 4194304)
               (:uint8 8388608)
               (:float 16777216)
               (:picker-hue-bar 33554432)
               (:picker-hue-wheel 67108864)
               (:input-rgb 134217728)
               (:input-hsv 268435456)
               (:-options-default 177209344)
               (:-display-mask 7340032)
               (:-data-type-mask 25165824)
               (:-picker-mask 100663296)
               (:-input-mask 402653184)
               (:rgb 1048576)
               (:hsv 2097152)
               (:hex 4194304))

(cffi:defcenum (%imgui::im-gui-combo-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1008:6"
               (:none 0)
               (:popup-align-left 1)
               (:height-small 2)
               (:height-regular 4)
               (:height-large 8)
               (:height-largest 16)
               (:no-arrow-button 32)
               (:no-preview 64)
               (:height-mask- 30))

(cffi:defcenum (%imgui::im-gui-cond- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1580:6"
               (:none 0)
               (:always 1)
               (:once 2)
               (:first-use-ever 4)
               (:appearing 8))

(cffi:defcenum (%imgui::im-gui-config-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1353:6"
               (:none 0)
               (:nav-enable-keyboard 1)
               (:nav-enable-gamepad 2)
               (:nav-enable-set-mouse-pos 4)
               (:nav-no-capture-keyboard 8)
               (:no-mouse 16)
               (:no-mouse-cursor-change 32)
               (:is-srgb 1048576)
               (:is-touch-screen 2097152))

(cffi:defcenum (%imgui::im-gui-data-type- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1245:6"
               (:s8 0)
               (:u8 1)
               (:s16 2)
               (:u16 3)
               (:s32 4)
               (:u32 5)
               (:s64 6)
               (:u64 7)
               (:float 8)
               (:double 9)
               (:count 10))

(cffi:defcenum (%imgui::im-gui-dir- :int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1261:6"
               (:none -1)
               (:left 0)
               (:right 1)
               (:up 2)
               (:down 3)
               (:count 4))

(cffi:defcenum (%imgui::im-gui-drag-drop-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1223:6"
               (:none 0)
               (:source-no-preview-tooltip 1)
               (:source-no-disable-hover 2)
               (:source-no-hold-to-open-others 4)
               (:source-allow-null-id 8)
               (:source-extern 16)
               (:source-auto-expire-payload 32)
               (:accept-before-delivery 1024)
               (:accept-no-draw-default-rect 2048)
               (:accept-no-preview-tooltip 4096)
               (:accept-peek-only 3072))

(cffi:defcenum (%imgui::im-gui-focused-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1195:6"
               (:none 0)
               (:child-windows 1)
               (:root-window 2)
               (:any-window 4)
               (:root-and-child-windows 3))

(cffi:defcenum (%imgui::im-gui-hovered-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1207:6"
               (:none 0)
               (:child-windows 1)
               (:root-window 2)
               (:any-window 4)
               (:allow-when-blocked-by-popup 8)
               (:allow-when-blocked-by-active-item 32)
               (:allow-when-overlapped 64)
               (:allow-when-disabled 128)
               (:rect-only 104)
               (:root-and-child-windows 3))

(cffi:defcenum (%imgui::im-gui-input-text-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:923:6"
               (:none 0)
               (:chars-decimal 1)
               (:chars-hexadecimal 2)
               (:chars-uppercase 4)
               (:chars-no-blank 8)
               (:auto-select-all 16)
               (:enter-returns-true 32)
               (:callback-completion 64)
               (:callback-history 128)
               (:callback-always 256)
               (:callback-char-filter 512)
               (:allow-tab-input 1024)
               (:ctrl-enter-for-new-line 2048)
               (:no-horizontal-scroll 4096)
               (:always-insert-mode 8192)
               (:read-only 16384)
               (:password 32768)
               (:no-undo-redo 65536)
               (:chars-scientific 131072)
               (:callback-resize 262144)
               (:callback-edit 524288)
               (:multiline 1048576)
               (:no-mark-edited 2097152))

(cffi:defcenum (%imgui::im-gui-key-mod-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1308:6"
               (:none 0)
               (:ctrl 1)
               (:shift 2)
               (:alt 4)
               (:super 8))

(cffi:defcenum (%imgui::im-gui-key- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1280:6"
               (:tab 0)
               (:left-arrow 1)
               (:right-arrow 2)
               (:up-arrow 3)
               (:down-arrow 4)
               (:page-up 5)
               (:page-down 6)
               (:home 7)
               (:end 8)
               (:insert 9)
               (:delete 10)
               (:backspace 11)
               (:space 12)
               (:enter 13)
               (:escape 14)
               (:key-pad-enter 15)
               (:a 16)
               (:c 17)
               (:v 18)
               (:x 19)
               (:y 20)
               (:z 21)
               (:count 22))

(cffi:defcenum (%imgui::im-gui-mouse-button- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1552:6"
               (:left 0)
               (:right 1)
               (:middle 2)
               (:count 5))

(cffi:defcenum (%imgui::im-gui-mouse-cursor- :int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1562:6"
               (:none -1)
               (:arrow 0)
               (:text-input 1)
               (:resize-all 2)
               (:resize-ns 3)
               (:resize-ew 4)
               (:resize-nesw 5)
               (:resize-nwse 6)
               (:hand 7)
               (:not-allowed 8)
               (:count 9))

(cffi:defcenum (%imgui::im-gui-nav-input- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1321:6"
               (:activate 0)
               (:cancel 1)
               (:input 2)
               (:menu 3)
               (:dpad-left 4)
               (:dpad-right 5)
               (:dpad-up 6)
               (:dpad-down 7)
               (:l-stick-left 8)
               (:l-stick-right 9)
               (:l-stick-up 10)
               (:l-stick-down 11)
               (:focus-prev 12)
               (:focus-next 13)
               (:tweak-slow 14)
               (:tweak-fast 15)
               (:key-menu- 16)
               (:key-left- 17)
               (:key-right- 18)
               (:key-up- 19)
               (:key-down- 20)
               (:count 21)
               (:internal-start- 16))

(cffi:defcenum (%imgui::im-gui-popup-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:981:6"
               (:none 0)
               (:mouse-button-left 0)
               (:mouse-button-right 1)
               (:mouse-button-middle 2)
               (:mouse-button-mask- 31)
               (:mouse-button-default- 1)
               (:no-open-over-existing-popup 32)
               (:no-open-over-items 64)
               (:any-popup-id 128)
               (:any-popup-level 256)
               (:any-popup 384))

(cffi:defcenum (%imgui::im-gui-selectable-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:997:6"
               (:none 0)
               (:dont-close-popups 1)
               (:span-all-columns 2)
               (:allow-double-click 4)
               (:disabled 8)
               (:allow-item-overlap 16))

(cffi:defcenum (%imgui::im-gui-slider-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1535:6"
               (:none 0)
               (:always-clamp 16)
               (:logarithmic 32)
               (:no-round-to-format 64)
               (:no-input 128)
               (:invalid-mask- 1879048207)
               (:clamp-on-input 16))

(cffi:defcenum (%imgui::im-gui-sort-direction- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1272:6"
               (:none 0)
               (:ascending 1)
               (:descending 2))

(cffi:defcenum (%imgui::im-gui-style-var- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1444:6"
               (:alpha 0)
               (:window-padding 1)
               (:window-rounding 2)
               (:window-border-size 3)
               (:window-min-size 4)
               (:window-title-align 5)
               (:child-rounding 6)
               (:child-border-size 7)
               (:popup-rounding 8)
               (:popup-border-size 9)
               (:frame-padding 10)
               (:frame-rounding 11)
               (:frame-border-size 12)
               (:item-spacing 13)
               (:item-inner-spacing 14)
               (:indent-spacing 15)
               (:cell-padding 16)
               (:scrollbar-size 17)
               (:scrollbar-rounding 18)
               (:grab-min-size 19)
               (:grab-rounding 20)
               (:tab-rounding 21)
               (:button-text-align 22)
               (:selectable-text-align 23)
               (:count 24))

(cffi:defcenum (%imgui::im-gui-tab-bar-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1022:6"
               (:none 0)
               (:reorderable 1)
               (:auto-select-new-tabs 2)
               (:tab-list-popup-button 4)
               (:no-close-with-middle-mouse-button 8)
               (:no-tab-list-scrolling-buttons 16)
               (:no-tooltip 32)
               (:fitting-policy-resize-down 64)
               (:fitting-policy-scroll 128)
               (:fitting-policy-mask- 192)
               (:fitting-policy-default- 64))

(cffi:defcenum (%imgui::im-gui-tab-item-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1038:6"
               (:none 0)
               (:unsaved-document 1)
               (:set-selected 2)
               (:no-close-with-middle-mouse-button 4)
               (:no-push-id 8)
               (:no-tooltip 16)
               (:no-reorder 32)
               (:leading 64)
               (:trailing 128))

(cffi:defcenum (%imgui::im-gui-table-bg-target- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1186:6"
               (:none 0)
               (:row-bg0 1)
               (:row-bg1 2)
               (:cell-bg 3))

(cffi:defcenum (%imgui::im-gui-table-column-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1131:6"
               (:none 0)
               (:default-hide 1)
               (:default-sort 2)
               (:width-stretch 4)
               (:width-fixed 8)
               (:no-resize 16)
               (:no-reorder 32)
               (:no-hide 64)
               (:no-clip 128)
               (:no-sort 256)
               (:no-sort-ascending 512)
               (:no-sort-descending 1024)
               (:no-header-width 2048)
               (:prefer-sort-ascending 4096)
               (:prefer-sort-descending 8192)
               (:indent-enable 16384)
               (:indent-disable 32768)
               (:is-enabled 1048576)
               (:is-visible 2097152)
               (:is-sorted 4194304)
               (:is-hovered 8388608)
               (:width-mask- 12)
               (:indent-mask- 49152)
               (:status-mask- 15728640)
               (:no-direct-resize- 1073741824))

(cffi:defcenum (%imgui::im-gui-table-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1074:6"
               (:none 0)
               (:resizable 1)
               (:reorderable 2)
               (:hideable 4)
               (:sortable 8)
               (:no-saved-settings 16)
               (:context-menu-in-body 32)
               (:row-bg 64)
               (:borders-inner-h 128)
               (:borders-outer-h 256)
               (:borders-inner-v 512)
               (:borders-outer-v 1024)
               (:borders-h 384)
               (:borders-v 1536)
               (:borders-inner 640)
               (:borders-outer 1280)
               (:borders 1920)
               (:no-borders-in-body 2048)
               (:no-borders-in-body-until-resize 4096)
               (:sizing-fixed-fit 8192)
               (:sizing-fixed-same 16384)
               (:sizing-stretch-prop 24576)
               (:sizing-stretch-same 32768)
               (:no-host-extend-x 65536)
               (:no-host-extend-y 131072)
               (:no-keep-columns-visible 262144)
               (:precise-widths 524288)
               (:no-clip 1048576)
               (:pad-outer-x 2097152)
               (:no-pad-outer-x 4194304)
               (:no-pad-inner-x 8388608)
               (:scroll-x 16777216)
               (:scroll-y 33554432)
               (:sort-multi 67108864)
               (:sort-tristate 134217728)
               (:sizing-mask- 57344))

(cffi:defcenum (%imgui::im-gui-table-row-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1171:6"
               (:none 0)
               (:headers 1))

(cffi:defcenum (%imgui::im-gui-tree-node-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:952:6"
               (:none 0)
               (:selected 1)
               (:framed 2)
               (:allow-item-overlap 4)
               (:no-tree-push-on-open 8)
               (:no-auto-open-on-log 16)
               (:default-open 32)
               (:open-on-double-click 64)
               (:open-on-arrow 128)
               (:leaf 256)
               (:bullet 512)
               (:frame-padding 1024)
               (:span-avail-width 2048)
               (:span-full-width 4096)
               (:nav-left-jumps-back-here 8192)
               (:collapsing-header 26))

(cffi:defcenum (%imgui::im-gui-viewport-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2742:6"
               (:none 0)
               (:is-platform-window 1)
               (:is-platform-monitor 2)
               (:owned-by-app 4))

(cffi:defcenum (%imgui::im-gui-window-flags- :unsigned-int)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:883:6"
               (:none 0)
               (:no-title-bar 1)
               (:no-resize 2)
               (:no-move 4)
               (:no-scrollbar 8)
               (:no-scroll-with-mouse 16)
               (:no-collapse 32)
               (:always-auto-resize 64)
               (:no-background 128)
               (:no-saved-settings 256)
               (:no-mouse-inputs 512)
               (:menu-bar 1024)
               (:horizontal-scrollbar 2048)
               (:no-focus-on-appearing 4096)
               (:no-bring-to-front-on-focus 8192)
               (:always-vertical-scrollbar 16384)
               (:always-horizontal-scrollbar 32768)
               (:always-use-window-padding 65536)
               (:no-nav-inputs 262144)
               (:no-nav-focus 524288)
               (:unsaved-document 1048576)
               (:no-nav 786432)
               (:no-decoration 43)
               (:no-inputs 786944)
               (:nav-flattened 8388608)
               (:child-window 16777216)
               (:tooltip 33554432)
               (:popup 67108864)
               (:modal 134217728)
               (:child-menu 268435456))

(iffi:defitype %imgui::im-gui-id
               :unsigned-int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:193:22")

(iffi:defistruct (%imgui::im-gui-payload :size-reporter
                  "__claw_sizeof_ImGuiPayload" :alignment-reporter
                  "__claw_alignof_ImGuiPayload" :constructor
                  %imgui::im-gui-payload :destructor
                  %imgui::~im-gui-payload)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1922:8"
                 (%imgui::data (:pointer :void) :setter
                  "__claw_set_ImGuiPayload_Data" :getter
                  "__claw_get_ImGuiPayload_Data" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1925:21")
                 (%imgui::data-size :int :setter
                  "__claw_set_ImGuiPayload_DataSize" :getter
                  "__claw_get_ImGuiPayload_DataSize" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1926:21")
                 (%imgui::source-id %imgui::im-gui-id :setter
                  "__claw_set_ImGuiPayload_SourceId" :getter
                  "__claw_get_ImGuiPayload_SourceId" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1929:21")
                 (%imgui::source-parent-id %imgui::im-gui-id :setter
                  "__claw_set_ImGuiPayload_SourceParentId" :getter
                  "__claw_get_ImGuiPayload_SourceParentId"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1930:21")
                 (%imgui::data-frame-count :int :setter
                  "__claw_set_ImGuiPayload_DataFrameCount" :getter
                  "__claw_get_ImGuiPayload_DataFrameCount"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1931:21")
                 (%imgui::data-type claw-utils:claw-string :setter
                  nil :getter "__claw_get_ImGuiPayload_DataType"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1932:21")
                 (%imgui::preview :bool :setter
                  "__claw_set_ImGuiPayload_Preview" :getter
                  "__claw_get_ImGuiPayload_Preview" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1933:21")
                 (%imgui::delivery :bool :setter
                  "__claw_set_ImGuiPayload_Delivery" :getter
                  "__claw_get_ImGuiPayload_Delivery" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1934:21"))

(iffi:defitype %imgui::im-gui-drag-drop-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:172:13")

(iffi:defifun ("__claw__ZN5ImGui21AcceptDragDropPayloadEPKci"
               %imgui::im-gui+accept-drag-drop-payload)
              (:pointer %imgui::im-gui-payload)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:758:37"
              (%imgui::type claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-drag-drop-flags))

(iffi:defifun ("__claw__ZN5ImGui23AlignTextToFramePaddingEv"
               %imgui::im-gui+align-text-to-frame-padding)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:422:29")

(iffi:defitype %imgui::im-gui-dir
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:156:13")

(iffi:defifun ("__claw__ZN5ImGui11ArrowButtonEPKci"
               %imgui::im-gui+arrow-button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:465:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::dir %imgui::im-gui-dir))

(iffi:defitype %imgui::im-gui-window-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:187:13")

(iffi:defifun ("__claw__ZN5ImGui5BeginEPKcPbi" %imgui::im-gui+begin)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:300:29"
              (%imgui::name claw-utils:claw-string)
              (%imgui::p-open (:pointer :bool))
              (%imgui::flags %imgui::im-gui-window-flags))

(iffi:defistruct (%imgui::im-vec2 :size-reporter
                  "__claw_sizeof_ImVec2" :alignment-reporter
                  "__claw_alignof_ImVec2")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:227:8"
                 (%imgui::x :float :setter "__claw_set_ImVec2_x"
                  :getter "__claw_get_ImVec2_x" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:229:45")
                 (%imgui::y :float :setter "__claw_set_ImVec2_y"
                  :getter "__claw_get_ImVec2_y" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:229:48"))

(iffi:defifun ("__claw__ZN5ImGui10BeginChildEPKcRK6ImVec2bi"
               %imgui::im-gui+begin-child)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:311:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::border :bool)
              (%imgui::flags %imgui::im-gui-window-flags))

(iffi:defifun ("__claw__ZN5ImGui10BeginChildEjRK6ImVec2bi"
               %imgui::im-gui+begin-child)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:312:29"
              (%imgui::id %imgui::im-gui-id)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::border :bool)
              (%imgui::flags %imgui::im-gui-window-flags))

(iffi:defifun ("__claw__ZN5ImGui15BeginChildFrameEjRK6ImVec2i"
               %imgui::im-gui+begin-child-frame)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:811:29"
              (%imgui::id %imgui::im-gui-id)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::flags %imgui::im-gui-window-flags))

(iffi:defitype %imgui::im-gui-combo-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:171:13")

(iffi:defifun ("__claw__ZN5ImGui10BeginComboEPKcS1_i"
               %imgui::im-gui+begin-combo)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:479:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::preview-value claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-combo-flags))

(iffi:defifun ("__claw__ZN5ImGui19BeginDragDropSourceEi"
               %imgui::im-gui+begin-drag-drop-source)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:754:29"
              (%imgui::flags %imgui::im-gui-drag-drop-flags))

(iffi:defifun ("__claw__ZN5ImGui19BeginDragDropTargetEv"
               %imgui::im-gui+begin-drag-drop-target)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:757:37")

(iffi:defifun ("__claw__ZN5ImGui10BeginGroupEv"
               %imgui::im-gui+begin-group)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:411:29")

(iffi:defifun ("__claw__ZN5ImGui12BeginListBoxEPKcRK6ImVec2"
               %imgui::im-gui+begin-list-box)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:590:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui16BeginMainMenuBarEv"
               %imgui::im-gui+begin-main-menu-bar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:615:29")

(iffi:defifun ("__claw__ZN5ImGui9BeginMenuEPKcb"
               %imgui::im-gui+begin-menu)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:617:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::enabled :bool))

(iffi:defifun ("__claw__ZN5ImGui12BeginMenuBarEv"
               %imgui::im-gui+begin-menu-bar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:613:29")

(iffi:defifun ("__claw__ZN5ImGui10BeginPopupEPKci"
               %imgui::im-gui+begin-popup)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:640:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-window-flags))

(iffi:defitype %imgui::im-gui-popup-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:177:13")

(iffi:defifun ("__claw__ZN5ImGui21BeginPopupContextItemEPKci"
               %imgui::im-gui+begin-popup-context-item)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:657:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::popup-flags %imgui::im-gui-popup-flags))

(iffi:defifun ("__claw__ZN5ImGui21BeginPopupContextVoidEPKci"
               %imgui::im-gui+begin-popup-context-void)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:659:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::popup-flags %imgui::im-gui-popup-flags))

(iffi:defifun ("__claw__ZN5ImGui23BeginPopupContextWindowEPKci"
               %imgui::im-gui+begin-popup-context-window)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:658:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::popup-flags %imgui::im-gui-popup-flags))

(iffi:defifun ("__claw__ZN5ImGui15BeginPopupModalEPKcPbi"
               %imgui::im-gui+begin-popup-modal)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:641:29"
              (%imgui::name claw-utils:claw-string)
              (%imgui::p-open (:pointer :bool))
              (%imgui::flags %imgui::im-gui-window-flags))

(iffi:defitype %imgui::im-gui-tab-bar-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:180:13")

(iffi:defifun ("__claw__ZN5ImGui11BeginTabBarEPKci"
               %imgui::im-gui+begin-tab-bar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:736:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-tab-bar-flags))

(iffi:defitype %imgui::im-gui-tab-item-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:181:13")

(iffi:defifun ("__claw__ZN5ImGui12BeginTabItemEPKcPbi"
               %imgui::im-gui+begin-tab-item)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:738:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::p-open (:pointer :bool))
              (%imgui::flags %imgui::im-gui-tab-item-flags))

(iffi:defitype %imgui::im-gui-table-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:182:13")

(iffi:defifun ("__claw__ZN5ImGui10BeginTableEPKciiRK6ImVec2f"
               %imgui::im-gui+begin-table)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:691:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::column :int)
              (%imgui::flags %imgui::im-gui-table-flags)
              (%imgui::outer-size (:pointer %imgui::im-vec2))
              (%imgui::inner-width :float))

(iffi:defifun ("__claw__ZN5ImGui12BeginTooltipEv"
               %imgui::im-gui+begin-tooltip)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:624:29")

(iffi:defifun ("__claw__ZN5ImGui6BulletEv" %imgui::im-gui+bullet)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:474:29")

(iffi:defifun ("__claw__ZN5ImGui10BulletTextEPKcz"
               %imgui::im-gui+bullet-text)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:456:29"
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui6ButtonEPKcRK6ImVec2"
               %imgui::im-gui+button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:462:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui13CalcItemWidthEv"
               %imgui::im-gui+calc-item-width)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:384:29")

(iffi:defifun ("__claw__ZN5ImGui16CalcListClippingEifPiS0_"
               %imgui::im-gui+calc-list-clipping)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:810:29"
              (%imgui::items-count :int)
              (%imgui::items-height :float)
              (%imgui::out-items-display-start (:pointer :int))
              (%imgui::out-items-display-end (:pointer :int)))

(iffi:defifun ("__claw__ZN5ImGui12CalcTextSizeEPKcS1_bf"
               %imgui::im-gui+calc-text-size)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:815:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2))
              (%imgui::text claw-utils:claw-string)
              (%imgui::text-end claw-utils:claw-string)
              (%imgui::hide-text-after-double-hash :bool)
              (%imgui::wrap-width :float))

(iffi:defifun ("__claw__ZN5ImGui22CaptureKeyboardFromAppEb"
               %imgui::im-gui+capture-keyboard-from-app)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:831:29"
              (%imgui::want-capture-keyboard-value :bool))

(iffi:defifun ("__claw__ZN5ImGui19CaptureMouseFromAppEb"
               %imgui::im-gui+capture-mouse-from-app)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:851:29"
              (%imgui::want-capture-mouse-value :bool))

(iffi:defifun ("__claw__ZN5ImGui8CheckboxEPKcPb"
               %imgui::im-gui+checkbox)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:468:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :bool)))

(iffi:defifun ("__claw__ZN5ImGui13CheckboxFlagsEPKcPii"
               %imgui::im-gui+checkbox-flags)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:469:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::flags (:pointer :int))
              (%imgui::flags-value :int))

(iffi:defifun ("__claw__ZN5ImGui13CheckboxFlagsEPKcPjj"
               %imgui::im-gui+checkbox-flags)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:470:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::flags (:pointer :unsigned-int))
              (%imgui::flags-value :unsigned-int))

(iffi:defifun ("__claw__ZN5ImGui17CloseCurrentPopupEv"
               %imgui::im-gui+close-current-popup)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:651:29")

(iffi:defitype %imgui::im-gui-tree-node-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:185:13")

(iffi:defifun ("__claw__ZN5ImGui16CollapsingHeaderEPKcPbi"
               %imgui::im-gui+collapsing-header)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:575:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::p-visible (:pointer :bool))
              (%imgui::flags %imgui::im-gui-tree-node-flags))

(iffi:defifun ("__claw__ZN5ImGui16CollapsingHeaderEPKci"
               %imgui::im-gui+collapsing-header)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:574:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-tree-node-flags))

(iffi:defistruct (%imgui::im-vec4 :size-reporter
                  "__claw_sizeof_ImVec4" :alignment-reporter
                  "__claw_alignof_ImVec4")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:240:8"
                 (%imgui::x :float :setter "__claw_set_ImVec4_x"
                  :getter "__claw_get_ImVec4_x" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:242:53")
                 (%imgui::y :float :setter "__claw_set_ImVec4_y"
                  :getter "__claw_get_ImVec4_y" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:242:56")
                 (%imgui::z :float :setter "__claw_set_ImVec4_z"
                  :getter "__claw_get_ImVec4_z" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:242:59")
                 (%imgui::w :float :setter "__claw_set_ImVec4_w"
                  :getter "__claw_get_ImVec4_w" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:242:62"))

(iffi:defitype %imgui::im-gui-color-edit-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:169:13")

(iffi:defifun ("__claw__ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2"
               %imgui::im-gui+color-button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:555:29"
              (%imgui::desc-id claw-utils:claw-string)
              (%imgui::col (:pointer %imgui::im-vec4))
              (%imgui::flags %imgui::im-gui-color-edit-flags)
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defitype %imgui::im-u32
               :unsigned-int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:213:29")

(iffi:defifun ("__claw__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4"
               %imgui::im-gui+color-convert-float4to-u32)
              %imgui::im-u32
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:819:29"
              (%imgui::in (:pointer %imgui::im-vec4)))

(iffi:defifun ("__claw__ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_"
               %imgui::im-gui+color-convert-hs-vto-rgb)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:821:29"
              (%imgui::h :float)
              (%imgui::s :float)
              (%imgui::v :float)
              (%imgui::out-r (:pointer :float))
              (%imgui::out-g (:pointer :float))
              (%imgui::out-b (:pointer :float)))

(iffi:defifun ("__claw__ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_"
               %imgui::im-gui+color-convert-rg-bto-hsv)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:820:29"
              (%imgui::r :float)
              (%imgui::g :float)
              (%imgui::b :float)
              (%imgui::out-h (:pointer :float))
              (%imgui::out-s (:pointer :float))
              (%imgui::out-v (:pointer :float)))

(iffi:defifun ("__claw__ZN5ImGui23ColorConvertU32ToFloat4Ej"
               %imgui::im-gui+color-convert-u32to-float4)
              (:pointer %imgui::im-vec4)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:818:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec4))
              (%imgui::in %imgui::im-u32))

(iffi:defifun ("__claw__ZN5ImGui10ColorEdit3EPKcPfi"
               %imgui::im-gui+color-edit3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:551:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::col (:array :float 3))
              (%imgui::flags %imgui::im-gui-color-edit-flags))

(iffi:defifun ("__claw__ZN5ImGui10ColorEdit4EPKcPfi"
               %imgui::im-gui+color-edit4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:552:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::col (:array :float 4))
              (%imgui::flags %imgui::im-gui-color-edit-flags))

(iffi:defifun ("__claw__ZN5ImGui12ColorPicker3EPKcPfi"
               %imgui::im-gui+color-picker3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:553:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::col (:array :float 3))
              (%imgui::flags %imgui::im-gui-color-edit-flags))

(iffi:defifun ("__claw__ZN5ImGui12ColorPicker4EPKcPfiPKf"
               %imgui::im-gui+color-picker4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:554:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::col (:array :float 4))
              (%imgui::flags %imgui::im-gui-color-edit-flags)
              (%imgui::ref-col (:pointer :float)))

(iffi:defifun ("__claw__ZN5ImGui7ColumnsEiPKcb"
               %imgui::im-gui+columns)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:726:29"
              (%imgui::count :int)
              (%imgui::id claw-utils:claw-string)
              (%imgui::border :bool))

(iffi:defifun ("__claw__ZN5ImGui5ComboEPKcPiPKS1_ii"
               %imgui::im-gui+combo)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:481:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::current-item (:pointer :int))
              (%imgui::items (:pointer claw-utils:claw-string))
              (%imgui::items-count :int)
              (%imgui::popup-max-height-in-items :int))

(iffi:defifun ("__claw__ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii"
               %imgui::im-gui+combo)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:483:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::current-item (:pointer :int))
              (%imgui::items-getter (:pointer :void))
              (%imgui::data (:pointer :void))
              (%imgui::items-count :int)
              (%imgui::popup-max-height-in-items :int))

(iffi:defifun ("__claw__ZN5ImGui5ComboEPKcPiS1_i"
               %imgui::im-gui+combo)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:482:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::current-item (:pointer :int))
              (%imgui::items-separated-by-zeros
               claw-utils:claw-string)
              (%imgui::popup-max-height-in-items :int))

(iffi:defistruct (%imgui::im-gui-context :size-reporter nil
                  :alignment-reporter nil)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:134:8")

(iffi:defitype %imgui::im-font-atlas-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:166:13")

(iffi:defitype %imgui::im-texture-id
               (:pointer :void)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:191:15")

(iffi:deficlass (%imgui::im-vector<float> :size-reporter
                 "__claw_sizeof_ImVector_float_" :alignment-reporter
                 "__claw_alignof_ImVector_float_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_float__Size" :getter
                 "__claw_get_ImVector_float__Size" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_float__Capacity" :getter
                 "__claw_get_ImVector_float__Capacity" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer :float) :setter
                 "__claw_set_ImVector_float__Data" :getter
                 "__claw_get_ImVector_float__Data" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:deficlass (%imgui::im-vector<unsigned+short> :size-reporter
                 "__claw_sizeof_ImVector_unsigned_short_"
                 :alignment-reporter
                 "__claw_alignof_ImVector_unsigned_short_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_unsigned_short__Size" :getter
                 "__claw_get_ImVector_unsigned_short__Size"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_unsigned_short__Capacity"
                 :getter
                 "__claw_get_ImVector_unsigned_short__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer :unsigned-short) :setter
                 "__claw_set_ImVector_unsigned_short__Data" :getter
                 "__claw_get_ImVector_unsigned_short__Data"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defistruct (%imgui::im-font-glyph :size-reporter
                  "__claw_sizeof_ImFontGlyph" :alignment-reporter
                  "__claw_alignof_ImFontGlyph")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2522:8"
                 (%imgui::colored :unsigned-int :setter
                  "__claw_set_ImFontGlyph_Colored" :getter
                  "__claw_get_ImFontGlyph_Colored" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2524:21")
                 (%imgui::visible :unsigned-int :setter
                  "__claw_set_ImFontGlyph_Visible" :getter
                  "__claw_get_ImFontGlyph_Visible" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2525:21")
                 (%imgui::codepoint :unsigned-int :setter
                  "__claw_set_ImFontGlyph_Codepoint" :getter
                  "__claw_get_ImFontGlyph_Codepoint" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2526:21")
                 (%imgui::advance-x :float :setter
                  "__claw_set_ImFontGlyph_AdvanceX" :getter
                  "__claw_get_ImFontGlyph_AdvanceX" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2527:21")
                 (%imgui::x0 :float :setter
                  "__claw_set_ImFontGlyph_X0" :getter
                  "__claw_get_ImFontGlyph_X0" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2528:21")
                 (%imgui::y0 :float :setter
                  "__claw_set_ImFontGlyph_Y0" :getter
                  "__claw_get_ImFontGlyph_Y0" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2528:25")
                 (%imgui::x1 :float :setter
                  "__claw_set_ImFontGlyph_X1" :getter
                  "__claw_get_ImFontGlyph_X1" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2528:29")
                 (%imgui::y1 :float :setter
                  "__claw_set_ImFontGlyph_Y1" :getter
                  "__claw_get_ImFontGlyph_Y1" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2528:33")
                 (%imgui::u0 :float :setter
                  "__claw_set_ImFontGlyph_U0" :getter
                  "__claw_get_ImFontGlyph_U0" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2529:21")
                 (%imgui::v0 :float :setter
                  "__claw_set_ImFontGlyph_V0" :getter
                  "__claw_get_ImFontGlyph_V0" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2529:25")
                 (%imgui::u1 :float :setter
                  "__claw_set_ImFontGlyph_U1" :getter
                  "__claw_get_ImFontGlyph_U1" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2529:29")
                 (%imgui::v1 :float :setter
                  "__claw_set_ImFontGlyph_V1" :getter
                  "__claw_get_ImFontGlyph_V1" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2529:33"))

(iffi:deficlass (%imgui::im-vector<im-font-glyph> :size-reporter
                 "__claw_sizeof_ImVector_ImFontGlyph_"
                 :alignment-reporter
                 "__claw_alignof_ImVector_ImFontGlyph_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImFontGlyph__Size" :getter
                 "__claw_get_ImVector_ImFontGlyph__Size"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImFontGlyph__Capacity" :getter
                 "__claw_get_ImVector_ImFontGlyph__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer %imgui::im-font-glyph)
                 :setter "__claw_set_ImVector_ImFontGlyph__Data"
                 :getter "__claw_get_ImVector_ImFontGlyph__Data"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defirecord %imgui::im-font-atlas nil "forward declaration")

(iffi:defitype %imgui::im-wchar
               :unsigned-short
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:204:19")

(iffi:defirecord %imgui::im-font nil "forward declaration")

(iffi:defistruct (%imgui::im-font-config :size-reporter
                  "__claw_sizeof_ImFontConfig" :alignment-reporter
                  "__claw_alignof_ImFontConfig")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2493:8"
                 (%imgui::font-data (:pointer :void) :setter
                  "__claw_set_ImFontConfig_FontData" :getter
                  "__claw_get_ImFontConfig_FontData" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2495:21")
                 (%imgui::font-data-size :int :setter
                  "__claw_set_ImFontConfig_FontDataSize" :getter
                  "__claw_get_ImFontConfig_FontDataSize"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2496:21")
                 (%imgui::font-data-owned-by-atlas :bool :setter
                  "__claw_set_ImFontConfig_FontDataOwnedByAtlas"
                  :getter
                  "__claw_get_ImFontConfig_FontDataOwnedByAtlas"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2497:21")
                 (%imgui::font-no :int :setter
                  "__claw_set_ImFontConfig_FontNo" :getter
                  "__claw_get_ImFontConfig_FontNo" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2498:21")
                 (%imgui::size-pixels :float :setter
                  "__claw_set_ImFontConfig_SizePixels" :getter
                  "__claw_get_ImFontConfig_SizePixels" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2499:21")
                 (%imgui::oversample-h :int :setter
                  "__claw_set_ImFontConfig_OversampleH" :getter
                  "__claw_get_ImFontConfig_OversampleH"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2500:21")
                 (%imgui::oversample-v :int :setter
                  "__claw_set_ImFontConfig_OversampleV" :getter
                  "__claw_get_ImFontConfig_OversampleV"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2501:21")
                 (%imgui::pixel-snap-h :bool :setter
                  "__claw_set_ImFontConfig_PixelSnapH" :getter
                  "__claw_get_ImFontConfig_PixelSnapH" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2502:21")
                 (%imgui::glyph-extra-spacing
                  (:pointer %imgui::im-vec2) :setter
                  "__claw_set_ImFontConfig_GlyphExtraSpacing" :getter
                  "__claw_get_ImFontConfig_GlyphExtraSpacing"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2503:21")
                 (%imgui::glyph-offset (:pointer %imgui::im-vec2)
                  :setter "__claw_set_ImFontConfig_GlyphOffset"
                  :getter "__claw_get_ImFontConfig_GlyphOffset"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2504:21")
                 (%imgui::glyph-ranges (:pointer %imgui::im-wchar)
                  :setter "__claw_set_ImFontConfig_GlyphRanges"
                  :getter "__claw_get_ImFontConfig_GlyphRanges"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2505:21")
                 (%imgui::glyph-min-advance-x :float :setter
                  "__claw_set_ImFontConfig_GlyphMinAdvanceX" :getter
                  "__claw_get_ImFontConfig_GlyphMinAdvanceX"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2506:21")
                 (%imgui::glyph-max-advance-x :float :setter
                  "__claw_set_ImFontConfig_GlyphMaxAdvanceX" :getter
                  "__claw_get_ImFontConfig_GlyphMaxAdvanceX"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2507:21")
                 (%imgui::merge-mode :bool :setter
                  "__claw_set_ImFontConfig_MergeMode" :getter
                  "__claw_get_ImFontConfig_MergeMode" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2508:21")
                 (%imgui::font-builder-flags :unsigned-int :setter
                  "__claw_set_ImFontConfig_FontBuilderFlags" :getter
                  "__claw_get_ImFontConfig_FontBuilderFlags"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2509:21")
                 (%imgui::rasterizer-multiply :float :setter
                  "__claw_set_ImFontConfig_RasterizerMultiply"
                  :getter
                  "__claw_get_ImFontConfig_RasterizerMultiply"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2510:21")
                 (%imgui::ellipsis-char %imgui::im-wchar :setter
                  "__claw_set_ImFontConfig_EllipsisChar" :getter
                  "__claw_get_ImFontConfig_EllipsisChar"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2511:21")
                 (%imgui::name claw-utils:claw-string :setter nil
                  :getter "__claw_get_ImFontConfig_Name"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2514:21")
                 (%imgui::dst-font (:pointer %imgui::im-font) :setter
                  "__claw_set_ImFontConfig_DstFont" :getter
                  "__claw_get_ImFontConfig_DstFont" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2515:21"))

(iffi:defitype %imgui::im-u8
               :unsigned-char
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:209:29")

(iffi:defistruct (%imgui::im-font :size-reporter
                  "__claw_sizeof_ImFont" :alignment-reporter
                  "__claw_alignof_ImFont")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2686:8"
                 (%imgui::index-advance-x
                  (:pointer %imgui::im-vector<float>) :setter
                  "__claw_set_ImFont_IndexAdvanceX" :getter
                  "__claw_get_ImFont_IndexAdvanceX" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2689:33")
                 (%imgui::fallback-advance-x :float :setter
                  "__claw_set_ImFont_FallbackAdvanceX" :getter
                  "__claw_get_ImFont_FallbackAdvanceX" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2690:33")
                 (%imgui::font-size :float :setter
                  "__claw_set_ImFont_FontSize" :getter
                  "__claw_get_ImFont_FontSize" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2691:33")
                 (%imgui::index-lookup
                  (:pointer %imgui::im-vector<unsigned+short>)
                  :setter "__claw_set_ImFont_IndexLookup" :getter
                  "__claw_get_ImFont_IndexLookup" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2694:33")
                 (%imgui::glyphs
                  (:pointer %imgui::im-vector<im-font-glyph>) :setter
                  "__claw_set_ImFont_Glyphs" :getter
                  "__claw_get_ImFont_Glyphs" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2695:33")
                 (%imgui::fallback-glyph
                  (:pointer %imgui::im-font-glyph) :setter
                  "__claw_set_ImFont_FallbackGlyph" :getter
                  "__claw_get_ImFont_FallbackGlyph" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2696:33")
                 (%imgui::container-atlas
                  (:pointer %imgui::im-font-atlas) :setter
                  "__claw_set_ImFont_ContainerAtlas" :getter
                  "__claw_get_ImFont_ContainerAtlas" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2699:33")
                 (%imgui::config-data
                  (:pointer %imgui::im-font-config) :setter
                  "__claw_set_ImFont_ConfigData" :getter
                  "__claw_get_ImFont_ConfigData" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2700:33")
                 (%imgui::config-data-count :short :setter
                  "__claw_set_ImFont_ConfigDataCount" :getter
                  "__claw_get_ImFont_ConfigDataCount" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2701:33")
                 (%imgui::fallback-char %imgui::im-wchar :setter
                  "__claw_set_ImFont_FallbackChar" :getter
                  "__claw_get_ImFont_FallbackChar" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2702:33")
                 (%imgui::ellipsis-char %imgui::im-wchar :setter
                  "__claw_set_ImFont_EllipsisChar" :getter
                  "__claw_get_ImFont_EllipsisChar" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2703:33")
                 (%imgui::dirty-lookup-tables :bool :setter
                  "__claw_set_ImFont_DirtyLookupTables" :getter
                  "__claw_get_ImFont_DirtyLookupTables"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2704:33")
                 (%imgui::scale :float :setter
                  "__claw_set_ImFont_Scale" :getter
                  "__claw_get_ImFont_Scale" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2705:33")
                 (%imgui::ascent :float :setter
                  "__claw_set_ImFont_Ascent" :getter
                  "__claw_get_ImFont_Ascent" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2706:33")
                 (%imgui::descent :float :setter
                  "__claw_set_ImFont_Descent" :getter
                  "__claw_get_ImFont_Descent" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2706:41")
                 (%imgui::metrics-total-surface :int :setter
                  "__claw_set_ImFont_MetricsTotalSurface" :getter
                  "__claw_get_ImFont_MetricsTotalSurface"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2707:33")
                 (%imgui::used4k-pages-map (:pointer %imgui::im-u8)
                  :setter nil :getter
                  "__claw_get_ImFont_Used4kPagesMap" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2708:33"))

(iffi:deficlass (%imgui::im-vector<im-font*> :size-reporter
                 "__claw_sizeof_ImVector_ImFont__"
                 :alignment-reporter
                 "__claw_alignof_ImVector_ImFont__")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImFont___Size" :getter
                 "__claw_get_ImVector_ImFont___Size" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImFont___Capacity" :getter
                 "__claw_get_ImVector_ImFont___Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer (:pointer %imgui::im-font))
                 :setter "__claw_set_ImVector_ImFont___Data" :getter
                 "__claw_get_ImVector_ImFont___Data" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defistruct (%imgui::im-font-atlas-custom-rect :size-reporter
                  "__claw_sizeof_ImFontAtlasCustomRect"
                  :alignment-reporter
                  "__claw_alignof_ImFontAtlasCustomRect")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2549:8"
                 (%imgui::width :unsigned-short :setter
                  "__claw_set_ImFontAtlasCustomRect_Width" :getter
                  "__claw_get_ImFontAtlasCustomRect_Width"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2551:21")
                 (%imgui::height :unsigned-short :setter
                  "__claw_set_ImFontAtlasCustomRect_Height" :getter
                  "__claw_get_ImFontAtlasCustomRect_Height"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2551:28")
                 (%imgui::x :unsigned-short :setter
                  "__claw_set_ImFontAtlasCustomRect_X" :getter
                  "__claw_get_ImFontAtlasCustomRect_X" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2552:21")
                 (%imgui::y :unsigned-short :setter
                  "__claw_set_ImFontAtlasCustomRect_Y" :getter
                  "__claw_get_ImFontAtlasCustomRect_Y" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2552:24")
                 (%imgui::glyph-id :unsigned-int :setter
                  "__claw_set_ImFontAtlasCustomRect_GlyphID" :getter
                  "__claw_get_ImFontAtlasCustomRect_GlyphID"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2553:21")
                 (%imgui::glyph-advance-x :float :setter
                  "__claw_set_ImFontAtlasCustomRect_GlyphAdvanceX"
                  :getter
                  "__claw_get_ImFontAtlasCustomRect_GlyphAdvanceX"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2554:21")
                 (%imgui::glyph-offset (:pointer %imgui::im-vec2)
                  :setter
                  "__claw_set_ImFontAtlasCustomRect_GlyphOffset"
                  :getter
                  "__claw_get_ImFontAtlasCustomRect_GlyphOffset"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2555:21")
                 (%imgui::font (:pointer %imgui::im-font) :setter
                  "__claw_set_ImFontAtlasCustomRect_Font" :getter
                  "__claw_get_ImFontAtlasCustomRect_Font"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2556:21"))

(iffi:deficlass (%imgui::im-vector<im-font-atlas-custom-rect>
                 :size-reporter
                 "__claw_sizeof_ImVector_ImFontAtlasCustomRect_"
                 :alignment-reporter
                 "__claw_alignof_ImVector_ImFontAtlasCustomRect_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImFontAtlasCustomRect__Size"
                 :getter
                 "__claw_get_ImVector_ImFontAtlasCustomRect__Size"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImFontAtlasCustomRect__Capacity"
                 :getter
                 "__claw_get_ImVector_ImFontAtlasCustomRect__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data
                 (:pointer %imgui::im-font-atlas-custom-rect) :setter
                 "__claw_set_ImVector_ImFontAtlasCustomRect__Data"
                 :getter
                 "__claw_get_ImVector_ImFontAtlasCustomRect__Data"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:deficlass (%imgui::im-vector<im-font-config> :size-reporter
                 "__claw_sizeof_ImVector_ImFontConfig_"
                 :alignment-reporter
                 "__claw_alignof_ImVector_ImFontConfig_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImFontConfig__Size" :getter
                 "__claw_get_ImVector_ImFontConfig__Size"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImFontConfig__Capacity" :getter
                 "__claw_get_ImVector_ImFontConfig__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer %imgui::im-font-config)
                 :setter "__claw_set_ImVector_ImFontConfig__Data"
                 :getter "__claw_get_ImVector_ImFontConfig__Data"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defistruct (%imgui::im-font-builder-io :size-reporter nil
                  :alignment-reporter nil)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:129:8")

(iffi:defistruct (%imgui::im-font-atlas :size-reporter
                  "__claw_sizeof_ImFontAtlas" :alignment-reporter
                  "__claw_alignof_ImFontAtlas")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2587:8"
                 (%imgui::locked :bool :setter
                  "__claw_set_ImFontAtlas_Locked" :getter
                  "__claw_get_ImFontAtlas_Locked" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2651:33")
                 (%imgui::flags %imgui::im-font-atlas-flags :setter
                  "__claw_set_ImFontAtlas_Flags" :getter
                  "__claw_get_ImFontAtlas_Flags" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2652:33")
                 (%imgui::tex-id %imgui::im-texture-id :setter
                  "__claw_set_ImFontAtlas_TexID" :getter
                  "__claw_get_ImFontAtlas_TexID" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2653:33")
                 (%imgui::tex-desired-width :int :setter
                  "__claw_set_ImFontAtlas_TexDesiredWidth" :getter
                  "__claw_get_ImFontAtlas_TexDesiredWidth"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2654:33")
                 (%imgui::tex-glyph-padding :int :setter
                  "__claw_set_ImFontAtlas_TexGlyphPadding" :getter
                  "__claw_get_ImFontAtlas_TexGlyphPadding"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2655:33")
                 (%imgui::tex-pixels-alpha8 (:pointer :unsigned-char)
                  :setter "__claw_set_ImFontAtlas_TexPixelsAlpha8"
                  :getter "__claw_get_ImFontAtlas_TexPixelsAlpha8"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2659:33")
                 (%imgui::tex-pixels-rgba32 (:pointer :unsigned-int)
                  :setter "__claw_set_ImFontAtlas_TexPixelsRGBA32"
                  :getter "__claw_get_ImFontAtlas_TexPixelsRGBA32"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2660:33")
                 (%imgui::tex-width :int :setter
                  "__claw_set_ImFontAtlas_TexWidth" :getter
                  "__claw_get_ImFontAtlas_TexWidth" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2661:33")
                 (%imgui::tex-height :int :setter
                  "__claw_set_ImFontAtlas_TexHeight" :getter
                  "__claw_get_ImFontAtlas_TexHeight" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2662:33")
                 (%imgui::tex-uv-scale (:pointer %imgui::im-vec2)
                  :setter "__claw_set_ImFontAtlas_TexUvScale" :getter
                  "__claw_get_ImFontAtlas_TexUvScale" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2663:33")
                 (%imgui::tex-uv-white-pixel
                  (:pointer %imgui::im-vec2) :setter
                  "__claw_set_ImFontAtlas_TexUvWhitePixel" :getter
                  "__claw_get_ImFontAtlas_TexUvWhitePixel"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2664:33")
                 (%imgui::fonts
                  (:pointer %imgui::im-vector<im-font*>) :setter
                  "__claw_set_ImFontAtlas_Fonts" :getter
                  "__claw_get_ImFontAtlas_Fonts" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2665:33")
                 (%imgui::custom-rects
                  (:pointer
                   %imgui::im-vector<im-font-atlas-custom-rect>)
                  :setter "__claw_set_ImFontAtlas_CustomRects"
                  :getter "__claw_get_ImFontAtlas_CustomRects"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2666:37")
                 (%imgui::config-data
                  (:pointer %imgui::im-vector<im-font-config>)
                  :setter "__claw_set_ImFontAtlas_ConfigData" :getter
                  "__claw_get_ImFontAtlas_ConfigData" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2667:33")
                 (%imgui::tex-uv-lines (:pointer %imgui::im-vec4)
                  :setter nil :getter
                  "__claw_get_ImFontAtlas_TexUvLines" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2668:33")
                 (%imgui::font-builder-io
                  (:pointer %imgui::im-font-builder-io) :setter
                  "__claw_set_ImFontAtlas_FontBuilderIO" :getter
                  "__claw_get_ImFontAtlas_FontBuilderIO"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2671:33")
                 (%imgui::font-builder-flags :unsigned-int :setter
                  "__claw_set_ImFontAtlas_FontBuilderFlags" :getter
                  "__claw_get_ImFontAtlas_FontBuilderFlags"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2672:33")
                 (%imgui::pack-id-mouse-cursors :int :setter
                  "__claw_set_ImFontAtlas_PackIdMouseCursors" :getter
                  "__claw_get_ImFontAtlas_PackIdMouseCursors"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2675:33")
                 (%imgui::pack-id-lines :int :setter
                  "__claw_set_ImFontAtlas_PackIdLines" :getter
                  "__claw_get_ImFontAtlas_PackIdLines" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2676:33"))

(iffi:defifun ("__claw__ZN5ImGui13CreateContextEP11ImFontAtlas"
               %imgui::im-gui+create-context)
              (:pointer %imgui::im-gui-context)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:260:29"
              (%imgui::shared-font-atlas
               (:pointer %imgui::im-font-atlas)))

(iffi:defitype %imgui::size-t
               :unsigned-long
               "/usr/lib/clang/11.1.0/include/stddef.h:46:23")

(iffi:defifun ("__claw__ZN5ImGui30DebugCheckVersionAndDataLayoutEPKcmmmmmm"
               %imgui::im-gui+debug-check-version-and-data-layout)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:867:29"
              (%imgui::version-str claw-utils:claw-string)
              (%imgui::sz-io %imgui::size-t)
              (%imgui::sz-style %imgui::size-t)
              (%imgui::sz-vec2 %imgui::size-t)
              (%imgui::sz-vec4 %imgui::size-t)
              (%imgui::sz-drawvert %imgui::size-t)
              (%imgui::sz-drawidx %imgui::size-t))

(iffi:defifun ("__claw__ZN5ImGui14DestroyContextEP12ImGuiContext"
               %imgui::im-gui+destroy-context)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:261:29"
              (%imgui::ctx (:pointer %imgui::im-gui-context)))

(iffi:defitype %imgui::im-gui-slider-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:179:13")

(iffi:defifun ("__claw__ZN5ImGui9DragFloatEPKcPffffS1_i"
               %imgui::im-gui+drag-float)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:496:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :float))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui10DragFloat2EPKcPffffS1_i"
               %imgui::im-gui+drag-float2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:497:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 2))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui10DragFloat3EPKcPffffS1_i"
               %imgui::im-gui+drag-float3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:498:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 3))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui10DragFloat4EPKcPffffS1_i"
               %imgui::im-gui+drag-float4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:499:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 4))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_i"
               %imgui::im-gui+drag-float-range2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:500:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v-current-min (:pointer :float))
              (%imgui::v-current-max (:pointer :float))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::format-max claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui7DragIntEPKcPifiiS1_i"
               %imgui::im-gui+drag-int)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:501:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :int))
              (%imgui::v-speed :float)
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui8DragInt2EPKcPifiiS1_i"
               %imgui::im-gui+drag-int2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:502:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 2))
              (%imgui::v-speed :float)
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui8DragInt3EPKcPifiiS1_i"
               %imgui::im-gui+drag-int3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:503:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 3))
              (%imgui::v-speed :float)
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui8DragInt4EPKcPifiiS1_i"
               %imgui::im-gui+drag-int4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:504:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 4))
              (%imgui::v-speed :float)
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_i"
               %imgui::im-gui+drag-int-range2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:505:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v-current-min (:pointer :int))
              (%imgui::v-current-max (:pointer :int))
              (%imgui::v-speed :float)
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::format-max claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defitype %imgui::im-gui-data-type
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:155:13")

(iffi:defifun ("__claw__ZN5ImGui10DragScalarEPKciPvfPKvS4_S1_i"
               %imgui::im-gui+drag-scalar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:506:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::v-speed :float)
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui10DragScalarEPKciPvfPKvS4_S1_f"
               %imgui::im-gui+drag-scalar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1985:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::v-speed :float)
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGui11DragScalarNEPKciPvifPKvS4_S1_i"
               %imgui::im-gui+drag-scalar-n)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:507:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::components :int)
              (%imgui::v-speed :float)
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui11DragScalarNEPKciPvifPKvS4_S1_f"
               %imgui::im-gui+drag-scalar-n)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1986:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::components :int)
              (%imgui::v-speed :float)
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGui5DummyERK6ImVec2"
               %imgui::im-gui+dummy)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:408:29"
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui3EndEv" %imgui::im-gui+end)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:301:29")

(iffi:defifun ("__claw__ZN5ImGui8EndChildEv"
               %imgui::im-gui+end-child)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:313:29")

(iffi:defifun ("__claw__ZN5ImGui13EndChildFrameEv"
               %imgui::im-gui+end-child-frame)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:812:29")

(iffi:defifun ("__claw__ZN5ImGui8EndComboEv"
               %imgui::im-gui+end-combo)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:480:29")

(iffi:defifun ("__claw__ZN5ImGui17EndDragDropSourceEv"
               %imgui::im-gui+end-drag-drop-source)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:756:29")

(iffi:defifun ("__claw__ZN5ImGui17EndDragDropTargetEv"
               %imgui::im-gui+end-drag-drop-target)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:759:37")

(iffi:defifun ("__claw__ZN5ImGui8EndFrameEv"
               %imgui::im-gui+end-frame)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:269:29")

(iffi:defifun ("__claw__ZN5ImGui8EndGroupEv"
               %imgui::im-gui+end-group)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:412:29")

(iffi:defifun ("__claw__ZN5ImGui10EndListBoxEv"
               %imgui::im-gui+end-list-box)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:591:29")

(iffi:defifun ("__claw__ZN5ImGui14EndMainMenuBarEv"
               %imgui::im-gui+end-main-menu-bar)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:616:29")

(iffi:defifun ("__claw__ZN5ImGui7EndMenuEv" %imgui::im-gui+end-menu)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:618:29")

(iffi:defifun ("__claw__ZN5ImGui10EndMenuBarEv"
               %imgui::im-gui+end-menu-bar)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:614:29")

(iffi:defifun ("__claw__ZN5ImGui8EndPopupEv"
               %imgui::im-gui+end-popup)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:642:29")

(iffi:defifun ("__claw__ZN5ImGui9EndTabBarEv"
               %imgui::im-gui+end-tab-bar)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:737:29")

(iffi:defifun ("__claw__ZN5ImGui10EndTabItemEv"
               %imgui::im-gui+end-tab-item)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:739:29")

(iffi:defifun ("__claw__ZN5ImGui8EndTableEv"
               %imgui::im-gui+end-table)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:692:29")

(iffi:defifun ("__claw__ZN5ImGui10EndTooltipEv"
               %imgui::im-gui+end-tooltip)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:625:29")

(iffi:defitype %imgui::im-draw-callback
               (:pointer :void)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2232:16")

(iffi:defistruct (%imgui::im-draw-cmd :size-reporter
                  "__claw_sizeof_ImDrawCmd" :alignment-reporter
                  "__claw_alignof_ImDrawCmd")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2246:8"
                 (%imgui::clip-rect (:pointer %imgui::im-vec4)
                  :setter "__claw_set_ImDrawCmd_ClipRect" :getter
                  "__claw_get_ImDrawCmd_ClipRect" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2248:21")
                 (%imgui::texture-id %imgui::im-texture-id :setter
                  "__claw_set_ImDrawCmd_TextureId" :getter
                  "__claw_get_ImDrawCmd_TextureId" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2249:21")
                 (%imgui::vtx-offset :unsigned-int :setter
                  "__claw_set_ImDrawCmd_VtxOffset" :getter
                  "__claw_get_ImDrawCmd_VtxOffset" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2250:21")
                 (%imgui::idx-offset :unsigned-int :setter
                  "__claw_set_ImDrawCmd_IdxOffset" :getter
                  "__claw_get_ImDrawCmd_IdxOffset" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2251:21")
                 (%imgui::elem-count :unsigned-int :setter
                  "__claw_set_ImDrawCmd_ElemCount" :getter
                  "__claw_get_ImDrawCmd_ElemCount" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2252:21")
                 (%imgui::user-callback %imgui::im-draw-callback
                  :setter "__claw_set_ImDrawCmd_UserCallback" :getter
                  "__claw_get_ImDrawCmd_UserCallback" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2253:21")
                 (%imgui::user-callback-data (:pointer :void) :setter
                  "__claw_set_ImDrawCmd_UserCallbackData" :getter
                  "__claw_get_ImDrawCmd_UserCallbackData"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2254:21"))

(iffi:deficlass (%imgui::im-vector<im-draw-cmd> :size-reporter
                 "__claw_sizeof_ImVector_ImDrawCmd_"
                 :alignment-reporter
                 "__claw_alignof_ImVector_ImDrawCmd_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImDrawCmd__Size" :getter
                 "__claw_get_ImVector_ImDrawCmd__Size" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImDrawCmd__Capacity" :getter
                 "__claw_get_ImVector_ImDrawCmd__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer %imgui::im-draw-cmd) :setter
                 "__claw_set_ImVector_ImDrawCmd__Data" :getter
                 "__claw_get_ImVector_ImDrawCmd__Data" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defistruct (%imgui::im-draw-vert :size-reporter
                  "__claw_sizeof_ImDrawVert" :alignment-reporter
                  "__claw_alignof_ImDrawVert")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2268:8"
                 (%imgui::pos (:pointer %imgui::im-vec2) :setter
                  "__claw_set_ImDrawVert_pos" :getter
                  "__claw_get_ImDrawVert_pos" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2270:13")
                 (%imgui::uv (:pointer %imgui::im-vec2) :setter
                  "__claw_set_ImDrawVert_uv" :getter
                  "__claw_get_ImDrawVert_uv" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2271:13")
                 (%imgui::col %imgui::im-u32 :setter
                  "__claw_set_ImDrawVert_col" :getter
                  "__claw_get_ImDrawVert_col" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2272:13"))

(iffi:deficlass (%imgui::im-vector<im-draw-vert> :size-reporter
                 "__claw_sizeof_ImVector_ImDrawVert_"
                 :alignment-reporter
                 "__claw_alignof_ImVector_ImDrawVert_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImDrawVert__Size" :getter
                 "__claw_get_ImVector_ImDrawVert__Size"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImDrawVert__Capacity" :getter
                 "__claw_get_ImVector_ImDrawVert__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer %imgui::im-draw-vert) :setter
                 "__claw_set_ImVector_ImDrawVert__Data" :getter
                 "__claw_get_ImVector_ImDrawVert__Data"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defitype %imgui::im-draw-list-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:165:13")

(iffi:defistruct (%imgui::im-draw-list-shared-data :size-reporter nil
                  :alignment-reporter nil)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:124:8")

(iffi:defitype %imgui::im-draw-idx
               :unsigned-short
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2263:24")

(iffi:deficlass (%imgui::im-vector<im-vec4> :size-reporter
                 "__claw_sizeof_ImVector_ImVec4_" :alignment-reporter
                 "__claw_alignof_ImVector_ImVec4_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImVec4__Size" :getter
                 "__claw_get_ImVector_ImVec4__Size" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImVec4__Capacity" :getter
                 "__claw_get_ImVector_ImVec4__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer %imgui::im-vec4) :setter
                 "__claw_set_ImVector_ImVec4__Data" :getter
                 "__claw_get_ImVector_ImVec4__Data" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:deficlass (%imgui::im-vector<void*> :size-reporter
                 "__claw_sizeof_ImVector_void__" :alignment-reporter
                 "__claw_alignof_ImVector_void__")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_void___Size" :getter
                 "__claw_get_ImVector_void___Size" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_void___Capacity" :getter
                 "__claw_get_ImVector_void___Capacity" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer (:pointer :void)) :setter
                 "__claw_set_ImVector_void___Data" :getter
                 "__claw_get_ImVector_void___Data" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:deficlass (%imgui::im-vector<im-vec2> :size-reporter
                 "__claw_sizeof_ImVector_ImVec2_" :alignment-reporter
                 "__claw_alignof_ImVector_ImVec2_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImVec2__Size" :getter
                 "__claw_get_ImVector_ImVec2__Size" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImVec2__Capacity" :getter
                 "__claw_get_ImVector_ImVec2__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer %imgui::im-vec2) :setter
                 "__claw_set_ImVector_ImVec2__Data" :getter
                 "__claw_get_ImVector_ImVec2__Data" :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defistruct (%imgui::im-draw-cmd-header :size-reporter
                  "__claw_sizeof_ImDrawCmdHeader" :alignment-reporter
                  "__claw_alignof_ImDrawCmdHeader")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2283:8"
                 (%imgui::clip-rect (:pointer %imgui::im-vec4)
                  :setter "__claw_set_ImDrawCmdHeader_ClipRect"
                  :getter "__claw_get_ImDrawCmdHeader_ClipRect"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2285:21")
                 (%imgui::texture-id %imgui::im-texture-id :setter
                  "__claw_set_ImDrawCmdHeader_TextureId" :getter
                  "__claw_get_ImDrawCmdHeader_TextureId"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2286:21")
                 (%imgui::vtx-offset :unsigned-int :setter
                  "__claw_set_ImDrawCmdHeader_VtxOffset" :getter
                  "__claw_get_ImDrawCmdHeader_VtxOffset"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2287:21"))

(iffi:defistruct (%imgui::im-draw-channel :size-reporter
                  "__claw_sizeof_ImDrawChannel" :alignment-reporter
                  "__claw_alignof_ImDrawChannel")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2291:8"
                 (%imgui::%cmd-buffer
                  (:pointer %imgui::im-vector<im-draw-cmd>) :setter
                  "__claw_set_ImDrawChannel__CmdBuffer" :getter
                  "__claw_get_ImDrawChannel__CmdBuffer"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2293:33")
                 (%imgui::%idx-buffer
                  (:pointer %imgui::im-vector<unsigned+short>)
                  :setter "__claw_set_ImDrawChannel__IdxBuffer"
                  :getter "__claw_get_ImDrawChannel__IdxBuffer"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2294:33"))

(iffi:deficlass (%imgui::im-vector<im-draw-channel> :size-reporter
                 "__claw_sizeof_ImVector_ImDrawChannel_"
                 :alignment-reporter
                 "__claw_alignof_ImVector_ImDrawChannel_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImDrawChannel__Size" :getter
                 "__claw_get_ImVector_ImDrawChannel__Size"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImDrawChannel__Capacity"
                 :getter
                 "__claw_get_ImVector_ImDrawChannel__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data (:pointer %imgui::im-draw-channel)
                 :setter "__claw_set_ImVector_ImDrawChannel__Data"
                 :getter "__claw_get_ImVector_ImDrawChannel__Data"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defistruct (%imgui::im-draw-list-splitter :size-reporter
                  "__claw_sizeof_ImDrawListSplitter"
                  :alignment-reporter
                  "__claw_alignof_ImDrawListSplitter")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2300:8"
                 (%imgui::%current :int :setter
                  "__claw_set_ImDrawListSplitter__Current" :getter
                  "__claw_get_ImDrawListSplitter__Current"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2302:33")
                 (%imgui::%count :int :setter
                  "__claw_set_ImDrawListSplitter__Count" :getter
                  "__claw_get_ImDrawListSplitter__Count"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2303:33")
                 (%imgui::%channels
                  (:pointer %imgui::im-vector<im-draw-channel>)
                  :setter "__claw_set_ImDrawListSplitter__Channels"
                  :getter "__claw_get_ImDrawListSplitter__Channels"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2304:33"))

(iffi:defistruct (%imgui::im-draw-list :size-reporter
                  "__claw_sizeof_ImDrawList" :alignment-reporter
                  "__claw_alignof_ImDrawList")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2349:8"
                 (%imgui::cmd-buffer
                  (:pointer %imgui::im-vector<im-draw-cmd>) :setter
                  "__claw_set_ImDrawList_CmdBuffer" :getter
                  "__claw_get_ImDrawList_CmdBuffer" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2352:29")
                 (%imgui::idx-buffer
                  (:pointer %imgui::im-vector<unsigned+short>)
                  :setter "__claw_set_ImDrawList_IdxBuffer" :getter
                  "__claw_get_ImDrawList_IdxBuffer" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2353:29")
                 (%imgui::vtx-buffer
                  (:pointer %imgui::im-vector<im-draw-vert>) :setter
                  "__claw_set_ImDrawList_VtxBuffer" :getter
                  "__claw_get_ImDrawList_VtxBuffer" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2354:29")
                 (%imgui::flags %imgui::im-draw-list-flags :setter
                  "__claw_set_ImDrawList_Flags" :getter
                  "__claw_get_ImDrawList_Flags" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2355:29")
                 (%imgui::%vtx-current-idx :unsigned-int :setter
                  "__claw_set_ImDrawList__VtxCurrentIdx" :getter
                  "__claw_get_ImDrawList__VtxCurrentIdx"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2358:29")
                 (%imgui::%data
                  (:pointer %imgui::im-draw-list-shared-data) :setter
                  "__claw_set_ImDrawList__Data" :getter
                  "__claw_get_ImDrawList__Data" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2359:33")
                 (%imgui::%owner-name claw-utils:claw-string :setter
                  "__claw_set_ImDrawList__OwnerName" :getter
                  "__claw_get_ImDrawList__OwnerName" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2360:29")
                 (%imgui::%vtx-write-ptr
                  (:pointer %imgui::im-draw-vert) :setter
                  "__claw_set_ImDrawList__VtxWritePtr" :getter
                  "__claw_get_ImDrawList__VtxWritePtr" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2361:29")
                 (%imgui::%idx-write-ptr
                  (:pointer %imgui::im-draw-idx) :setter
                  "__claw_set_ImDrawList__IdxWritePtr" :getter
                  "__claw_get_ImDrawList__IdxWritePtr" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2362:29")
                 (%imgui::%clip-rect-stack
                  (:pointer %imgui::im-vector<im-vec4>) :setter
                  "__claw_set_ImDrawList__ClipRectStack" :getter
                  "__claw_get_ImDrawList__ClipRectStack"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2363:29")
                 (%imgui::%texture-id-stack
                  (:pointer %imgui::im-vector<void*>) :setter
                  "__claw_set_ImDrawList__TextureIdStack" :getter
                  "__claw_get_ImDrawList__TextureIdStack"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2364:29")
                 (%imgui::%path (:pointer %imgui::im-vector<im-vec2>)
                  :setter "__claw_set_ImDrawList__Path" :getter
                  "__claw_get_ImDrawList__Path" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2365:29")
                 (%imgui::%cmd-header
                  (:pointer %imgui::im-draw-cmd-header) :setter
                  "__claw_set_ImDrawList__CmdHeader" :getter
                  "__claw_get_ImDrawList__CmdHeader" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2366:29")
                 (%imgui::%splitter
                  (:pointer %imgui::im-draw-list-splitter) :setter
                  "__claw_set_ImDrawList__Splitter" :getter
                  "__claw_get_ImDrawList__Splitter" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2367:29")
                 (%imgui::%fringe-scale :float :setter
                  "__claw_set_ImDrawList__FringeScale" :getter
                  "__claw_get_ImDrawList__FringeScale" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2368:29"))

(iffi:defifun ("__claw__ZN5ImGui21GetBackgroundDrawListEv"
               %imgui::im-gui+get-background-draw-list)
              (:pointer %imgui::im-draw-list)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:804:29")

(iffi:defifun ("__claw__ZN5ImGui16GetClipboardTextEv"
               %imgui::im-gui+get-clipboard-text)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:855:29")

(iffi:defifun ("__claw__ZN5ImGui11GetColorU32ERK6ImVec4"
               %imgui::im-gui+get-color-u32)
              %imgui::im-u32
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:393:29"
              (%imgui::col (:pointer %imgui::im-vec4)))

(iffi:defitype %imgui::im-gui-col
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:153:13")

(iffi:defifun ("__claw__ZN5ImGui11GetColorU32Eif"
               %imgui::im-gui+get-color-u32)
              %imgui::im-u32
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:392:29"
              (%imgui::idx %imgui::im-gui-col)
              (%imgui::alpha-mul :float))

(iffi:defifun ("__claw__ZN5ImGui11GetColorU32Ej"
               %imgui::im-gui+get-color-u32)
              %imgui::im-u32
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:394:29"
              (%imgui::col %imgui::im-u32))

(iffi:defifun ("__claw__ZN5ImGui14GetColumnIndexEv"
               %imgui::im-gui+get-column-index)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:728:29")

(iffi:defifun ("__claw__ZN5ImGui15GetColumnOffsetEi"
               %imgui::im-gui+get-column-offset)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:731:29"
              (%imgui::column-index :int))

(iffi:defifun ("__claw__ZN5ImGui14GetColumnWidthEi"
               %imgui::im-gui+get-column-width)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:729:29"
              (%imgui::column-index :int))

(iffi:defifun ("__claw__ZN5ImGui15GetColumnsCountEv"
               %imgui::im-gui+get-columns-count)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:733:29")

(iffi:defifun ("__claw__ZN5ImGui21GetContentRegionAvailEv"
               %imgui::im-gui+get-content-region-avail)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:348:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui19GetContentRegionMaxEv"
               %imgui::im-gui+get-content-region-max)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:349:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui17GetCurrentContextEv"
               %imgui::im-gui+get-current-context)
              (:pointer %imgui::im-gui-context)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:262:29")

(iffi:defifun ("__claw__ZN5ImGui12GetCursorPosEv"
               %imgui::im-gui+get-cursor-pos)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:413:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui13GetCursorPosXEv"
               %imgui::im-gui+get-cursor-pos-x)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:414:29")

(iffi:defifun ("__claw__ZN5ImGui13GetCursorPosYEv"
               %imgui::im-gui+get-cursor-pos-y)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:415:29")

(iffi:defifun ("__claw__ZN5ImGui18GetCursorScreenPosEv"
               %imgui::im-gui+get-cursor-screen-pos)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:420:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui17GetCursorStartPosEv"
               %imgui::im-gui+get-cursor-start-pos)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:419:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui18GetDragDropPayloadEv"
               %imgui::im-gui+get-drag-drop-payload)
              (:pointer %imgui::im-gui-payload)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:760:37")

(iffi:defistruct (%imgui::im-draw-data :size-reporter
                  "__claw_sizeof_ImDrawData" :alignment-reporter
                  "__claw_alignof_ImDrawData")
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2471:8"
                 (%imgui::valid :bool :setter
                  "__claw_set_ImDrawData_Valid" :getter
                  "__claw_get_ImDrawData_Valid" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2473:21")
                 (%imgui::cmd-lists-count :int :setter
                  "__claw_set_ImDrawData_CmdListsCount" :getter
                  "__claw_get_ImDrawData_CmdListsCount"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2474:21")
                 (%imgui::total-idx-count :int :setter
                  "__claw_set_ImDrawData_TotalIdxCount" :getter
                  "__claw_get_ImDrawData_TotalIdxCount"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2475:21")
                 (%imgui::total-vtx-count :int :setter
                  "__claw_set_ImDrawData_TotalVtxCount" :getter
                  "__claw_get_ImDrawData_TotalVtxCount"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2476:21")
                 (%imgui::cmd-lists
                  (:pointer (:pointer %imgui::im-draw-list)) :setter
                  "__claw_set_ImDrawData_CmdLists" :getter
                  "__claw_get_ImDrawData_CmdLists" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2477:21")
                 (%imgui::display-pos (:pointer %imgui::im-vec2)
                  :setter "__claw_set_ImDrawData_DisplayPos" :getter
                  "__claw_get_ImDrawData_DisplayPos" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2478:21")
                 (%imgui::display-size (:pointer %imgui::im-vec2)
                  :setter "__claw_set_ImDrawData_DisplaySize" :getter
                  "__claw_get_ImDrawData_DisplaySize" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2479:21")
                 (%imgui::framebuffer-scale
                  (:pointer %imgui::im-vec2) :setter
                  "__claw_set_ImDrawData_FramebufferScale" :getter
                  "__claw_get_ImDrawData_FramebufferScale"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2480:21"))

(iffi:defifun ("__claw__ZN5ImGui11GetDrawDataEv"
               %imgui::im-gui+get-draw-data)
              (:pointer %imgui::im-draw-data)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:271:29")

(iffi:defifun ("__claw__ZN5ImGui21GetDrawListSharedDataEv"
               %imgui::im-gui+get-draw-list-shared-data)
              (:pointer %imgui::im-draw-list-shared-data)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:806:37")

(iffi:defifun ("__claw__ZN5ImGui7GetFontEv" %imgui::im-gui+get-font)
              (:pointer %imgui::im-font)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:389:29")

(iffi:defifun ("__claw__ZN5ImGui11GetFontSizeEv"
               %imgui::im-gui+get-font-size)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:390:29")

(iffi:defifun ("__claw__ZN5ImGui22GetFontTexUvWhitePixelEv"
               %imgui::im-gui+get-font-tex-uv-white-pixel)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:391:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui21GetForegroundDrawListEv"
               %imgui::im-gui+get-foreground-draw-list)
              (:pointer %imgui::im-draw-list)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:805:29")

(iffi:defifun ("__claw__ZN5ImGui13GetFrameCountEv"
               %imgui::im-gui+get-frame-count)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:803:29")

(iffi:defifun ("__claw__ZN5ImGui14GetFrameHeightEv"
               %imgui::im-gui+get-frame-height)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:425:29")

(iffi:defifun ("__claw__ZN5ImGui25GetFrameHeightWithSpacingEv"
               %imgui::im-gui+get-frame-height-with-spacing)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:426:29")

(iffi:defifun ("__claw__ZN5ImGui5GetIDEPKc" %imgui::im-gui+get-id)
              %imgui::im-gui-id
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:440:29"
              (%imgui::str-id claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui5GetIDEPKcS1_" %imgui::im-gui+get-id)
              %imgui::im-gui-id
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:441:29"
              (%imgui::str-id-begin claw-utils:claw-string)
              (%imgui::str-id-end claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui5GetIDEPKv" %imgui::im-gui+get-id)
              %imgui::im-gui-id
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:442:29"
              (%imgui::ptr-id (:pointer :void)))

(iffi:defitype %imgui::im-gui-config-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:170:13")

(iffi:defitype %imgui::im-gui-backend-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:167:13")

(iffi:defitype %imgui::im-gui-key-mod-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:176:13")

(iffi:defitype %imgui::im-wchar16
               :unsigned-short
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:199:24")

(iffi:defistruct (%imgui::im-gui-io :size-reporter
                  "__claw_sizeof_ImGuiIO" :alignment-reporter
                  "__claw_alignof_ImGuiIO" :constructor
                  %imgui::im-gui-io :destructor %imgui::~im-gui-io)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1740:8"
                 (%imgui::config-flags %imgui::im-gui-config-flags
                  :setter "__claw_set_ImGuiIO_ConfigFlags" :getter
                  "__claw_get_ImGuiIO_ConfigFlags" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1746:24")
                 (%imgui::backend-flags %imgui::im-gui-backend-flags
                  :setter "__claw_set_ImGuiIO_BackendFlags" :getter
                  "__claw_get_ImGuiIO_BackendFlags" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1747:24")
                 (%imgui::delta-time :float :setter
                  "__claw_set_ImGuiIO_DeltaTime" :getter
                  "__claw_get_ImGuiIO_DeltaTime" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1749:17")
                 (%imgui::ini-saving-rate :float :setter
                  "__claw_set_ImGuiIO_IniSavingRate" :getter
                  "__claw_get_ImGuiIO_IniSavingRate" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1750:17")
                 (%imgui::ini-filename claw-utils:claw-string :setter
                  "__claw_set_ImGuiIO_IniFilename" :getter
                  "__claw_get_ImGuiIO_IniFilename" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1751:17")
                 (%imgui::log-filename claw-utils:claw-string :setter
                  "__claw_set_ImGuiIO_LogFilename" :getter
                  "__claw_get_ImGuiIO_LogFilename" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1752:17")
                 (%imgui::mouse-double-click-time :float :setter
                  "__claw_set_ImGuiIO_MouseDoubleClickTime" :getter
                  "__claw_get_ImGuiIO_MouseDoubleClickTime"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1753:17")
                 (%imgui::mouse-double-click-max-dist :float :setter
                  "__claw_set_ImGuiIO_MouseDoubleClickMaxDist"
                  :getter
                  "__claw_get_ImGuiIO_MouseDoubleClickMaxDist"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1754:17")
                 (%imgui::mouse-drag-threshold :float :setter
                  "__claw_set_ImGuiIO_MouseDragThreshold" :getter
                  "__claw_get_ImGuiIO_MouseDragThreshold"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1755:17")
                 (%imgui::key-map (:pointer :int) :setter nil :getter
                  "__claw_get_ImGuiIO_KeyMap" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1756:17")
                 (%imgui::key-repeat-delay :float :setter
                  "__claw_set_ImGuiIO_KeyRepeatDelay" :getter
                  "__claw_get_ImGuiIO_KeyRepeatDelay" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1757:17")
                 (%imgui::key-repeat-rate :float :setter
                  "__claw_set_ImGuiIO_KeyRepeatRate" :getter
                  "__claw_get_ImGuiIO_KeyRepeatRate" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1758:17")
                 (%imgui::user-data (:pointer :void) :setter
                  "__claw_set_ImGuiIO_UserData" :getter
                  "__claw_get_ImGuiIO_UserData" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1759:17")
                 (%imgui::font-global-scale :float :setter
                  "__claw_set_ImGuiIO_FontGlobalScale" :getter
                  "__claw_get_ImGuiIO_FontGlobalScale" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1762:17")
                 (%imgui::font-allow-user-scaling :bool :setter
                  "__claw_set_ImGuiIO_FontAllowUserScaling" :getter
                  "__claw_get_ImGuiIO_FontAllowUserScaling"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1763:17")
                 (%imgui::mouse-draw-cursor :bool :setter
                  "__claw_set_ImGuiIO_MouseDrawCursor" :getter
                  "__claw_get_ImGuiIO_MouseDrawCursor" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1768:17")
                 (%imgui::config-mac-osx-behaviors :bool :setter
                  "__claw_set_ImGuiIO_ConfigMacOSXBehaviors" :getter
                  "__claw_get_ImGuiIO_ConfigMacOSXBehaviors"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1769:17")
                 (%imgui::config-input-text-cursor-blink :bool
                  :setter
                  "__claw_set_ImGuiIO_ConfigInputTextCursorBlink"
                  :getter
                  "__claw_get_ImGuiIO_ConfigInputTextCursorBlink"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1770:17")
                 (%imgui::config-drag-click-to-input-text :bool
                  :setter
                  "__claw_set_ImGuiIO_ConfigDragClickToInputText"
                  :getter
                  "__claw_get_ImGuiIO_ConfigDragClickToInputText"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1771:17")
                 (%imgui::config-windows-resize-from-edges :bool
                  :setter
                  "__claw_set_ImGuiIO_ConfigWindowsResizeFromEdges"
                  :getter
                  "__claw_get_ImGuiIO_ConfigWindowsResizeFromEdges"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1772:17")
                 (%imgui::config-windows-move-from-title-bar-only
                  :bool :setter
                  "__claw_set_ImGuiIO_ConfigWindowsMoveFromTitleBarOnly"
                  :getter
                  "__claw_get_ImGuiIO_ConfigWindowsMoveFromTitleBarOnly"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1773:17")
                 (%imgui::config-memory-compact-timer :float :setter
                  "__claw_set_ImGuiIO_ConfigMemoryCompactTimer"
                  :getter
                  "__claw_get_ImGuiIO_ConfigMemoryCompactTimer"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1774:17")
                 (%imgui::backend-platform-name
                  claw-utils:claw-string :setter
                  "__claw_set_ImGuiIO_BackendPlatformName" :getter
                  "__claw_get_ImGuiIO_BackendPlatformName"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1782:17")
                 (%imgui::backend-renderer-name
                  claw-utils:claw-string :setter
                  "__claw_set_ImGuiIO_BackendRendererName" :getter
                  "__claw_get_ImGuiIO_BackendRendererName"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1783:17")
                 (%imgui::backend-platform-user-data (:pointer :void)
                  :setter
                  "__claw_set_ImGuiIO_BackendPlatformUserData"
                  :getter
                  "__claw_get_ImGuiIO_BackendPlatformUserData"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1784:17")
                 (%imgui::backend-renderer-user-data (:pointer :void)
                  :setter
                  "__claw_set_ImGuiIO_BackendRendererUserData"
                  :getter
                  "__claw_get_ImGuiIO_BackendRendererUserData"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1785:17")
                 (%imgui::backend-language-user-data (:pointer :void)
                  :setter
                  "__claw_set_ImGuiIO_BackendLanguageUserData"
                  :getter
                  "__claw_get_ImGuiIO_BackendLanguageUserData"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1786:17")
                 (%imgui::get-clipboard-text-fn (:pointer :void)
                  :setter "__claw_set_ImGuiIO_GetClipboardTextFn"
                  :getter "__claw_get_ImGuiIO_GetClipboardTextFn"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1790:19")
                 (%imgui::set-clipboard-text-fn (:pointer :void)
                  :setter "__claw_set_ImGuiIO_SetClipboardTextFn"
                  :getter "__claw_get_ImGuiIO_SetClipboardTextFn"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1791:19")
                 (%imgui::clipboard-user-data (:pointer :void)
                  :setter "__claw_set_ImGuiIO_ClipboardUserData"
                  :getter "__claw_get_ImGuiIO_ClipboardUserData"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1792:17")
                 (%imgui::ime-set-input-screen-pos-fn
                  (:pointer :void) :setter
                  "__claw_set_ImGuiIO_ImeSetInputScreenPosFn" :getter
                  "__claw_get_ImGuiIO_ImeSetInputScreenPosFn"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1796:19")
                 (%imgui::ime-window-handle (:pointer :void) :setter
                  "__claw_set_ImGuiIO_ImeWindowHandle" :getter
                  "__claw_get_ImGuiIO_ImeWindowHandle" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1797:17")
                 (%imgui::mouse-down (:pointer :bool) :setter nil
                  :getter "__claw_get_ImGuiIO_MouseDown"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1804:17")
                 (%imgui::mouse-wheel :float :setter
                  "__claw_set_ImGuiIO_MouseWheel" :getter
                  "__claw_get_ImGuiIO_MouseWheel" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1805:17")
                 (%imgui::mouse-wheel-h :float :setter
                  "__claw_set_ImGuiIO_MouseWheelH" :getter
                  "__claw_get_ImGuiIO_MouseWheelH" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1806:17")
                 (%imgui::key-ctrl :bool :setter
                  "__claw_set_ImGuiIO_KeyCtrl" :getter
                  "__claw_get_ImGuiIO_KeyCtrl" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1807:17")
                 (%imgui::key-shift :bool :setter
                  "__claw_set_ImGuiIO_KeyShift" :getter
                  "__claw_get_ImGuiIO_KeyShift" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1808:17")
                 (%imgui::key-alt :bool :setter
                  "__claw_set_ImGuiIO_KeyAlt" :getter
                  "__claw_get_ImGuiIO_KeyAlt" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1809:17")
                 (%imgui::key-super :bool :setter
                  "__claw_set_ImGuiIO_KeySuper" :getter
                  "__claw_get_ImGuiIO_KeySuper" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1810:17")
                 (%imgui::keys-down (:pointer :bool) :setter nil
                  :getter "__claw_get_ImGuiIO_KeysDown"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1811:17")
                 (%imgui::nav-inputs (:pointer :float) :setter nil
                  :getter "__claw_get_ImGuiIO_NavInputs"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1812:17")
                 (%imgui::want-capture-mouse :bool :setter
                  "__claw_set_ImGuiIO_WantCaptureMouse" :getter
                  "__claw_get_ImGuiIO_WantCaptureMouse"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1826:17")
                 (%imgui::want-capture-keyboard :bool :setter
                  "__claw_set_ImGuiIO_WantCaptureKeyboard" :getter
                  "__claw_get_ImGuiIO_WantCaptureKeyboard"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1827:17")
                 (%imgui::want-text-input :bool :setter
                  "__claw_set_ImGuiIO_WantTextInput" :getter
                  "__claw_get_ImGuiIO_WantTextInput" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1828:17")
                 (%imgui::want-set-mouse-pos :bool :setter
                  "__claw_set_ImGuiIO_WantSetMousePos" :getter
                  "__claw_get_ImGuiIO_WantSetMousePos" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1829:17")
                 (%imgui::want-save-ini-settings :bool :setter
                  "__claw_set_ImGuiIO_WantSaveIniSettings" :getter
                  "__claw_get_ImGuiIO_WantSaveIniSettings"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1830:17")
                 (%imgui::nav-active :bool :setter
                  "__claw_set_ImGuiIO_NavActive" :getter
                  "__claw_get_ImGuiIO_NavActive" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1831:17")
                 (%imgui::nav-visible :bool :setter
                  "__claw_set_ImGuiIO_NavVisible" :getter
                  "__claw_get_ImGuiIO_NavVisible" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1832:17")
                 (%imgui::framerate :float :setter
                  "__claw_set_ImGuiIO_Framerate" :getter
                  "__claw_get_ImGuiIO_Framerate" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1833:17")
                 (%imgui::metrics-render-vertices :int :setter
                  "__claw_set_ImGuiIO_MetricsRenderVertices" :getter
                  "__claw_get_ImGuiIO_MetricsRenderVertices"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1834:17")
                 (%imgui::metrics-render-indices :int :setter
                  "__claw_set_ImGuiIO_MetricsRenderIndices" :getter
                  "__claw_get_ImGuiIO_MetricsRenderIndices"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1835:17")
                 (%imgui::metrics-render-windows :int :setter
                  "__claw_set_ImGuiIO_MetricsRenderWindows" :getter
                  "__claw_get_ImGuiIO_MetricsRenderWindows"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1836:17")
                 (%imgui::metrics-active-windows :int :setter
                  "__claw_set_ImGuiIO_MetricsActiveWindows" :getter
                  "__claw_get_ImGuiIO_MetricsActiveWindows"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1837:17")
                 (%imgui::metrics-active-allocations :int :setter
                  "__claw_set_ImGuiIO_MetricsActiveAllocations"
                  :getter
                  "__claw_get_ImGuiIO_MetricsActiveAllocations"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1838:17")
                 (%imgui::key-mods %imgui::im-gui-key-mod-flags
                  :setter "__claw_set_ImGuiIO_KeyMods" :getter
                  "__claw_get_ImGuiIO_KeyMods" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1845:22")
                 (%imgui::mouse-clicked-time (:pointer :double)
                  :setter nil :getter
                  "__claw_get_ImGuiIO_MouseClickedTime"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1848:17")
                 (%imgui::mouse-clicked (:pointer :bool) :setter nil
                  :getter "__claw_get_ImGuiIO_MouseClicked"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1849:17")
                 (%imgui::mouse-double-clicked (:pointer :bool)
                  :setter nil :getter
                  "__claw_get_ImGuiIO_MouseDoubleClicked"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1850:17")
                 (%imgui::mouse-released (:pointer :bool) :setter nil
                  :getter "__claw_get_ImGuiIO_MouseReleased"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1851:17")
                 (%imgui::mouse-down-owned (:pointer :bool) :setter
                  nil :getter "__claw_get_ImGuiIO_MouseDownOwned"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1852:17")
                 (%imgui::mouse-down-was-double-click
                  (:pointer :bool) :setter nil :getter
                  "__claw_get_ImGuiIO_MouseDownWasDoubleClick"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1853:17")
                 (%imgui::mouse-down-duration (:pointer :float)
                  :setter nil :getter
                  "__claw_get_ImGuiIO_MouseDownDuration"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1854:17")
                 (%imgui::mouse-down-duration-prev (:pointer :float)
                  :setter nil :getter
                  "__claw_get_ImGuiIO_MouseDownDurationPrev"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1855:17")
                 (%imgui::mouse-drag-max-distance-sqr
                  (:pointer :float) :setter nil :getter
                  "__claw_get_ImGuiIO_MouseDragMaxDistanceSqr"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1857:17")
                 (%imgui::keys-down-duration (:pointer :float)
                  :setter nil :getter
                  "__claw_get_ImGuiIO_KeysDownDuration"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1858:17")
                 (%imgui::keys-down-duration-prev (:pointer :float)
                  :setter nil :getter
                  "__claw_get_ImGuiIO_KeysDownDurationPrev"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1859:17")
                 (%imgui::nav-inputs-down-duration (:pointer :float)
                  :setter nil :getter
                  "__claw_get_ImGuiIO_NavInputsDownDuration"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1860:17")
                 (%imgui::nav-inputs-down-duration-prev
                  (:pointer :float) :setter nil :getter
                  "__claw_get_ImGuiIO_NavInputsDownDurationPrev"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1861:17")
                 (%imgui::pen-pressure :float :setter
                  "__claw_set_ImGuiIO_PenPressure" :getter
                  "__claw_get_ImGuiIO_PenPressure" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1862:17")
                 (%imgui::input-queue-surrogate %imgui::im-wchar16
                  :setter "__claw_set_ImGuiIO_InputQueueSurrogate"
                  :getter "__claw_get_ImGuiIO_InputQueueSurrogate"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1863:17"))

(iffi:defifun ("__claw__ZN5ImGui5GetIOEv" %imgui::im-gui+get-io)
              (:pointer %imgui::im-gui-io)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:266:29")

(iffi:defifun ("__claw__ZN5ImGui14GetItemRectMaxEv"
               %imgui::im-gui+get-item-rect-max)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:789:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui14GetItemRectMinEv"
               %imgui::im-gui+get-item-rect-min)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:788:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui15GetItemRectSizeEv"
               %imgui::im-gui+get-item-rect-size)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:790:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defitype %imgui::im-gui-key
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:157:13")

(iffi:defifun ("__claw__ZN5ImGui11GetKeyIndexEi"
               %imgui::im-gui+get-key-index)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:826:29"
              (%imgui::imgui-key %imgui::im-gui-key))

(iffi:defifun ("__claw__ZN5ImGui19GetKeyPressedAmountEiff"
               %imgui::im-gui+get-key-pressed-amount)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:830:29"
              (%imgui::key-index :int)
              (%imgui::repeat-delay :float)
              (%imgui::rate :float))

(iffi:defitype %imgui::im-gui-viewport-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:186:13")

(iffi:defistruct (%imgui::im-gui-viewport :size-reporter
                  "__claw_sizeof_ImGuiViewport" :alignment-reporter
                  "__claw_alignof_ImGuiViewport" :constructor
                  %imgui::im-gui-viewport :destructor
                  %imgui::~im-gui-viewport)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2757:8"
                 (%imgui::flags %imgui::im-gui-viewport-flags :setter
                  "__claw_set_ImGuiViewport_Flags" :getter
                  "__claw_get_ImGuiViewport_Flags" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2759:25"))

(iffi:defifun ("__claw__ZN5ImGui15GetMainViewportEv"
               %imgui::im-gui+get-main-viewport)
              (:pointer %imgui::im-gui-viewport)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:797:30")

(iffi:defitype %imgui::im-gui-mouse-cursor
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:160:13")

(iffi:defifun ("__claw__ZN5ImGui14GetMouseCursorEv"
               %imgui::im-gui+get-mouse-cursor)
              %imgui::im-gui-mouse-cursor
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:849:32")

(iffi:defitype %imgui::im-gui-mouse-button
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:159:13")

(iffi:defifun ("__claw__ZN5ImGui17GetMouseDragDeltaEif"
               %imgui::im-gui+get-mouse-drag-delta)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:847:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2))
              (%imgui::button %imgui::im-gui-mouse-button)
              (%imgui::lock-threshold :float))

(iffi:defifun ("__claw__ZN5ImGui11GetMousePosEv"
               %imgui::im-gui+get-mouse-pos)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:844:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui32GetMousePosOnOpeningCurrentPopupEv"
               %imgui::im-gui+get-mouse-pos-on-opening-current-popup)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:845:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui13GetScrollMaxXEv"
               %imgui::im-gui+get-scroll-max-x)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:359:29")

(iffi:defifun ("__claw__ZN5ImGui13GetScrollMaxYEv"
               %imgui::im-gui+get-scroll-max-y)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:360:29")

(iffi:defifun ("__claw__ZN5ImGui10GetScrollXEv"
               %imgui::im-gui+get-scroll-x)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:355:29")

(iffi:defifun ("__claw__ZN5ImGui10GetScrollYEv"
               %imgui::im-gui+get-scroll-y)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:356:29")

(iffi:defistruct (%imgui::im-gui-storage :size-reporter
                  "__claw_sizeof_ImGuiStorage" :alignment-reporter
                  "__claw_alignof_ImGuiStorage" :constructor
                  %imgui::im-gui-storage :destructor
                  %imgui::~im-gui-storage)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2088:8")

(iffi:defifun ("__claw__ZN5ImGui15GetStateStorageEv"
               %imgui::im-gui+get-state-storage)
              (:pointer %imgui::im-gui-storage)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:809:29")

(iffi:defistruct (%imgui::im-gui-style :size-reporter
                  "__claw_sizeof_ImGuiStyle" :alignment-reporter
                  "__claw_alignof_ImGuiStyle" :constructor
                  %imgui::im-gui-style :destructor
                  %imgui::~im-gui-style)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1686:8"
                 (%imgui::alpha :float :setter
                  "__claw_set_ImGuiStyle_Alpha" :getter
                  "__claw_get_ImGuiStyle_Alpha" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1688:17")
                 (%imgui::window-rounding :float :setter
                  "__claw_set_ImGuiStyle_WindowRounding" :getter
                  "__claw_get_ImGuiStyle_WindowRounding"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1690:17")
                 (%imgui::window-border-size :float :setter
                  "__claw_set_ImGuiStyle_WindowBorderSize" :getter
                  "__claw_get_ImGuiStyle_WindowBorderSize"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1691:17")
                 (%imgui::window-menu-button-position
                  %imgui::im-gui-dir :setter
                  "__claw_set_ImGuiStyle_WindowMenuButtonPosition"
                  :getter
                  "__claw_get_ImGuiStyle_WindowMenuButtonPosition"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1694:17")
                 (%imgui::child-rounding :float :setter
                  "__claw_set_ImGuiStyle_ChildRounding" :getter
                  "__claw_get_ImGuiStyle_ChildRounding"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1695:17")
                 (%imgui::child-border-size :float :setter
                  "__claw_set_ImGuiStyle_ChildBorderSize" :getter
                  "__claw_get_ImGuiStyle_ChildBorderSize"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1696:17")
                 (%imgui::popup-rounding :float :setter
                  "__claw_set_ImGuiStyle_PopupRounding" :getter
                  "__claw_get_ImGuiStyle_PopupRounding"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1697:17")
                 (%imgui::popup-border-size :float :setter
                  "__claw_set_ImGuiStyle_PopupBorderSize" :getter
                  "__claw_get_ImGuiStyle_PopupBorderSize"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1698:17")
                 (%imgui::frame-rounding :float :setter
                  "__claw_set_ImGuiStyle_FrameRounding" :getter
                  "__claw_get_ImGuiStyle_FrameRounding"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1700:17")
                 (%imgui::frame-border-size :float :setter
                  "__claw_set_ImGuiStyle_FrameBorderSize" :getter
                  "__claw_get_ImGuiStyle_FrameBorderSize"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1701:17")
                 (%imgui::indent-spacing :float :setter
                  "__claw_set_ImGuiStyle_IndentSpacing" :getter
                  "__claw_get_ImGuiStyle_IndentSpacing"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1706:17")
                 (%imgui::columns-min-spacing :float :setter
                  "__claw_set_ImGuiStyle_ColumnsMinSpacing" :getter
                  "__claw_get_ImGuiStyle_ColumnsMinSpacing"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1707:17")
                 (%imgui::scrollbar-size :float :setter
                  "__claw_set_ImGuiStyle_ScrollbarSize" :getter
                  "__claw_get_ImGuiStyle_ScrollbarSize"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1708:17")
                 (%imgui::scrollbar-rounding :float :setter
                  "__claw_set_ImGuiStyle_ScrollbarRounding" :getter
                  "__claw_get_ImGuiStyle_ScrollbarRounding"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1709:17")
                 (%imgui::grab-min-size :float :setter
                  "__claw_set_ImGuiStyle_GrabMinSize" :getter
                  "__claw_get_ImGuiStyle_GrabMinSize" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1710:17")
                 (%imgui::grab-rounding :float :setter
                  "__claw_set_ImGuiStyle_GrabRounding" :getter
                  "__claw_get_ImGuiStyle_GrabRounding" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1711:17")
                 (%imgui::log-slider-deadzone :float :setter
                  "__claw_set_ImGuiStyle_LogSliderDeadzone" :getter
                  "__claw_get_ImGuiStyle_LogSliderDeadzone"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1712:17")
                 (%imgui::tab-rounding :float :setter
                  "__claw_set_ImGuiStyle_TabRounding" :getter
                  "__claw_get_ImGuiStyle_TabRounding" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1713:17")
                 (%imgui::tab-border-size :float :setter
                  "__claw_set_ImGuiStyle_TabBorderSize" :getter
                  "__claw_get_ImGuiStyle_TabBorderSize"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1714:17")
                 (%imgui::tab-min-width-for-close-button :float
                  :setter
                  "__claw_set_ImGuiStyle_TabMinWidthForCloseButton"
                  :getter
                  "__claw_get_ImGuiStyle_TabMinWidthForCloseButton"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1715:17")
                 (%imgui::color-button-position %imgui::im-gui-dir
                  :setter "__claw_set_ImGuiStyle_ColorButtonPosition"
                  :getter "__claw_get_ImGuiStyle_ColorButtonPosition"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1716:17")
                 (%imgui::mouse-cursor-scale :float :setter
                  "__claw_set_ImGuiStyle_MouseCursorScale" :getter
                  "__claw_get_ImGuiStyle_MouseCursorScale"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1721:17")
                 (%imgui::anti-aliased-lines :bool :setter
                  "__claw_set_ImGuiStyle_AntiAliasedLines" :getter
                  "__claw_get_ImGuiStyle_AntiAliasedLines"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1722:17")
                 (%imgui::anti-aliased-lines-use-tex :bool :setter
                  "__claw_set_ImGuiStyle_AntiAliasedLinesUseTex"
                  :getter
                  "__claw_get_ImGuiStyle_AntiAliasedLinesUseTex"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1723:17")
                 (%imgui::anti-aliased-fill :bool :setter
                  "__claw_set_ImGuiStyle_AntiAliasedFill" :getter
                  "__claw_get_ImGuiStyle_AntiAliasedFill"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1724:17")
                 (%imgui::curve-tessellation-tol :float :setter
                  "__claw_set_ImGuiStyle_CurveTessellationTol"
                  :getter
                  "__claw_get_ImGuiStyle_CurveTessellationTol"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1725:17")
                 (%imgui::circle-segment-max-error :float :setter
                  "__claw_set_ImGuiStyle_CircleSegmentMaxError"
                  :getter
                  "__claw_get_ImGuiStyle_CircleSegmentMaxError"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1726:17"))

(iffi:defifun ("__claw__ZN5ImGui8GetStyleEv"
               %imgui::im-gui+get-style)
              (:pointer %imgui::im-gui-style)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:267:29")

(iffi:defifun ("__claw__ZN5ImGui17GetStyleColorNameEi"
               %imgui::im-gui+get-style-color-name)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:807:29"
              (%imgui::idx %imgui::im-gui-col))

(iffi:defifun ("__claw__ZN5ImGui17GetStyleColorVec4Ei"
               %imgui::im-gui+get-style-color-vec4)
              (:pointer %imgui::im-vec4)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:395:29"
              (%imgui::idx %imgui::im-gui-col))

(iffi:defifun ("__claw__ZN5ImGui17GetTextLineHeightEv"
               %imgui::im-gui+get-text-line-height)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:423:29")

(iffi:defifun ("__claw__ZN5ImGui28GetTextLineHeightWithSpacingEv"
               %imgui::im-gui+get-text-line-height-with-spacing)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:424:29")

(iffi:defifun ("__claw__ZN5ImGui7GetTimeEv" %imgui::im-gui+get-time)
              :double
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:802:29")

(iffi:defifun ("__claw__ZN5ImGui25GetTreeNodeToLabelSpacingEv"
               %imgui::im-gui+get-tree-node-to-label-spacing)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:573:29")

(iffi:defifun ("__claw__ZN5ImGui10GetVersionEv"
               %imgui::im-gui+get-version)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:281:29")

(iffi:defifun ("__claw__ZN5ImGui25GetWindowContentRegionMaxEv"
               %imgui::im-gui+get-window-content-region-max)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:351:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui25GetWindowContentRegionMinEv"
               %imgui::im-gui+get-window-content-region-min)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:350:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui27GetWindowContentRegionWidthEv"
               %imgui::im-gui+get-window-content-region-width)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:352:29")

(iffi:defifun ("__claw__ZN5ImGui17GetWindowDrawListEv"
               %imgui::im-gui+get-window-draw-list)
              (:pointer %imgui::im-draw-list)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:321:29")

(iffi:defifun ("__claw__ZN5ImGui15GetWindowHeightEv"
               %imgui::im-gui+get-window-height)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:325:29")

(iffi:defifun ("__claw__ZN5ImGui12GetWindowPosEv"
               %imgui::im-gui+get-window-pos)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:322:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui13GetWindowSizeEv"
               %imgui::im-gui+get-window-size)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:323:29"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui14GetWindowWidthEv"
               %imgui::im-gui+get-window-width)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:324:29")

(iffi:defifun ("__claw__ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_"
               %imgui::im-gui+image)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:466:29"
              (%imgui::user-texture-id %imgui::im-texture-id)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::uv0 (:pointer %imgui::im-vec2))
              (%imgui::uv1 (:pointer %imgui::im-vec2))
              (%imgui::tint-col (:pointer %imgui::im-vec4))
              (%imgui::border-col (:pointer %imgui::im-vec4)))

(iffi:defifun ("__claw__ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_"
               %imgui::im-gui+image-button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:467:29"
              (%imgui::user-texture-id %imgui::im-texture-id)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::uv0 (:pointer %imgui::im-vec2))
              (%imgui::uv1 (:pointer %imgui::im-vec2))
              (%imgui::frame-padding :int)
              (%imgui::bg-col (:pointer %imgui::im-vec4))
              (%imgui::tint-col (:pointer %imgui::im-vec4)))

(iffi:defifun ("__claw__ZN5ImGui6IndentEf" %imgui::im-gui+indent)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:409:29"
              (%imgui::indent-w :float))

(iffi:defitype %imgui::im-gui-input-text-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:175:13")

(iffi:defifun ("__claw__ZN5ImGui11InputDoubleEPKcPdddS1_i"
               %imgui::im-gui+input-double)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:544:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :double))
              (%imgui::step :double)
              (%imgui::step-fast :double)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui10InputFloatEPKcPfffS1_i"
               %imgui::im-gui+input-float)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:536:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :float))
              (%imgui::step :float)
              (%imgui::step-fast :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui11InputFloat2EPKcPfS1_i"
               %imgui::im-gui+input-float2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:537:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 2))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui11InputFloat3EPKcPfS1_i"
               %imgui::im-gui+input-float3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:538:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 3))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui11InputFloat4EPKcPfS1_i"
               %imgui::im-gui+input-float4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:539:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 4))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui8InputIntEPKcPiiii"
               %imgui::im-gui+input-int)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:540:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :int))
              (%imgui::step :int)
              (%imgui::step-fast :int)
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui9InputInt2EPKcPii"
               %imgui::im-gui+input-int2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:541:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 2))
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui9InputInt3EPKcPii"
               %imgui::im-gui+input-int3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:542:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 3))
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui9InputInt4EPKcPii"
               %imgui::im-gui+input-int4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:543:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 4))
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i"
               %imgui::im-gui+input-scalar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:545:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::p-step (:pointer :void))
              (%imgui::p-step-fast (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defifun ("__claw__ZN5ImGui12InputScalarNEPKciPviPKvS4_S1_i"
               %imgui::im-gui+input-scalar-n)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:546:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::components :int)
              (%imgui::p-step (:pointer :void))
              (%imgui::p-step-fast (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-input-text-flags))

(iffi:defitype %imgui::im-gui-input-text-callback
               (:pointer :void)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:194:15")

(iffi:defifun ("__claw__ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv"
               %imgui::im-gui+input-text)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:533:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::buf claw-utils:claw-string)
              (%imgui::buf-size %imgui::size-t)
              (%imgui::flags %imgui::im-gui-input-text-flags)
              (%imgui::callback %imgui::im-gui-input-text-callback)
              (%imgui::user-data (:pointer :void)))

(iffi:defifun ("__claw__ZN5ImGui18InputTextMultilineEPKcPcmRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv"
               %imgui::im-gui+input-text-multiline)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:534:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::buf claw-utils:claw-string)
              (%imgui::buf-size %imgui::size-t)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::flags %imgui::im-gui-input-text-flags)
              (%imgui::callback %imgui::im-gui-input-text-callback)
              (%imgui::user-data (:pointer :void)))

(iffi:defifun ("__claw__ZN5ImGui17InputTextWithHintEPKcS1_PcmiPFiP26ImGuiInputTextCallbackDataEPv"
               %imgui::im-gui+input-text-with-hint)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:535:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::hint claw-utils:claw-string)
              (%imgui::buf claw-utils:claw-string)
              (%imgui::buf-size %imgui::size-t)
              (%imgui::flags %imgui::im-gui-input-text-flags)
              (%imgui::callback %imgui::im-gui-input-text-callback)
              (%imgui::user-data (:pointer :void)))

(iffi:defitype %imgui::im-gui-button-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:168:13")

(iffi:defifun ("__claw__ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i"
               %imgui::im-gui+invisible-button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:464:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::flags %imgui::im-gui-button-flags))

(iffi:defifun ("__claw__ZN5ImGui15IsAnyItemActiveEv"
               %imgui::im-gui+is-any-item-active)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:786:29")

(iffi:defifun ("__claw__ZN5ImGui16IsAnyItemFocusedEv"
               %imgui::im-gui+is-any-item-focused)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:787:29")

(iffi:defifun ("__claw__ZN5ImGui16IsAnyItemHoveredEv"
               %imgui::im-gui+is-any-item-hovered)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:785:29")

(iffi:defifun ("__claw__ZN5ImGui14IsAnyMouseDownEv"
               %imgui::im-gui+is-any-mouse-down)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:843:29")

(iffi:defifun ("__claw__ZN5ImGui15IsItemActivatedEv"
               %imgui::im-gui+is-item-activated)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:781:29")

(iffi:defifun ("__claw__ZN5ImGui12IsItemActiveEv"
               %imgui::im-gui+is-item-active)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:776:29")

(iffi:defifun ("__claw__ZN5ImGui13IsItemClickedEi"
               %imgui::im-gui+is-item-clicked)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:778:29"
              (%imgui::mouse-button %imgui::im-gui-mouse-button))

(iffi:defifun ("__claw__ZN5ImGui17IsItemDeactivatedEv"
               %imgui::im-gui+is-item-deactivated)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:782:29")

(iffi:defifun ("__claw__ZN5ImGui26IsItemDeactivatedAfterEditEv"
               %imgui::im-gui+is-item-deactivated-after-edit)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:783:29")

(iffi:defifun ("__claw__ZN5ImGui12IsItemEditedEv"
               %imgui::im-gui+is-item-edited)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:780:29")

(iffi:defifun ("__claw__ZN5ImGui13IsItemFocusedEv"
               %imgui::im-gui+is-item-focused)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:777:29")

(iffi:defitype %imgui::im-gui-hovered-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:174:13")

(iffi:defifun ("__claw__ZN5ImGui13IsItemHoveredEi"
               %imgui::im-gui+is-item-hovered)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:775:29"
              (%imgui::flags %imgui::im-gui-hovered-flags))

(iffi:defifun ("__claw__ZN5ImGui17IsItemToggledOpenEv"
               %imgui::im-gui+is-item-toggled-open)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:784:29")

(iffi:defifun ("__claw__ZN5ImGui13IsItemVisibleEv"
               %imgui::im-gui+is-item-visible)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:779:29")

(iffi:defifun ("__claw__ZN5ImGui9IsKeyDownEi"
               %imgui::im-gui+is-key-down)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:827:29"
              (%imgui::user-key-index :int))

(iffi:defifun ("__claw__ZN5ImGui12IsKeyPressedEib"
               %imgui::im-gui+is-key-pressed)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:828:29"
              (%imgui::user-key-index :int)
              (%imgui::repeat :bool))

(iffi:defifun ("__claw__ZN5ImGui13IsKeyReleasedEi"
               %imgui::im-gui+is-key-released)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:829:29"
              (%imgui::user-key-index :int))

(iffi:defifun ("__claw__ZN5ImGui14IsMouseClickedEib"
               %imgui::im-gui+is-mouse-clicked)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:838:29"
              (%imgui::button %imgui::im-gui-mouse-button)
              (%imgui::repeat :bool))

(iffi:defifun ("__claw__ZN5ImGui20IsMouseDoubleClickedEi"
               %imgui::im-gui+is-mouse-double-clicked)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:840:29"
              (%imgui::button %imgui::im-gui-mouse-button))

(iffi:defifun ("__claw__ZN5ImGui11IsMouseDownEi"
               %imgui::im-gui+is-mouse-down)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:837:29"
              (%imgui::button %imgui::im-gui-mouse-button))

(iffi:defifun ("__claw__ZN5ImGui15IsMouseDraggingEif"
               %imgui::im-gui+is-mouse-dragging)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:846:29"
              (%imgui::button %imgui::im-gui-mouse-button)
              (%imgui::lock-threshold :float))

(iffi:defifun ("__claw__ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b"
               %imgui::im-gui+is-mouse-hovering-rect)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:841:29"
              (%imgui::r-min (:pointer %imgui::im-vec2))
              (%imgui::r-max (:pointer %imgui::im-vec2))
              (%imgui::clip :bool))

(iffi:defifun ("__claw__ZN5ImGui15IsMousePosValidEPK6ImVec2"
               %imgui::im-gui+is-mouse-pos-valid)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:842:29"
              (%imgui::mouse-pos (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui15IsMouseReleasedEi"
               %imgui::im-gui+is-mouse-released)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:839:29"
              (%imgui::button %imgui::im-gui-mouse-button))

(iffi:defifun ("__claw__ZN5ImGui11IsPopupOpenEPKci"
               %imgui::im-gui+is-popup-open)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:664:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-popup-flags))

(iffi:defifun ("__claw__ZN5ImGui13IsRectVisibleERK6ImVec2"
               %imgui::im-gui+is-rect-visible)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:800:29"
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui13IsRectVisibleERK6ImVec2S2_"
               %imgui::im-gui+is-rect-visible)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:801:29"
              (%imgui::rect-min (:pointer %imgui::im-vec2))
              (%imgui::rect-max (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui17IsWindowAppearingEv"
               %imgui::im-gui+is-window-appearing)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:317:29")

(iffi:defifun ("__claw__ZN5ImGui17IsWindowCollapsedEv"
               %imgui::im-gui+is-window-collapsed)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:318:29")

(iffi:defitype %imgui::im-gui-focused-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:173:13")

(iffi:defifun ("__claw__ZN5ImGui15IsWindowFocusedEi"
               %imgui::im-gui+is-window-focused)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:319:29"
              (%imgui::flags %imgui::im-gui-focused-flags))

(iffi:defifun ("__claw__ZN5ImGui15IsWindowHoveredEi"
               %imgui::im-gui+is-window-hovered)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:320:29"
              (%imgui::flags %imgui::im-gui-hovered-flags))

(iffi:defifun ("__claw__ZN5ImGui9LabelTextEPKcS1_z"
               %imgui::im-gui+label-text)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:454:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui7ListBoxEPKcPiPKS1_ii"
               %imgui::im-gui+list-box)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:592:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::current-item (:pointer :int))
              (%imgui::items (:pointer claw-utils:claw-string))
              (%imgui::items-count :int)
              (%imgui::height-in-items :int))

(iffi:defifun ("__claw__ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii"
               %imgui::im-gui+list-box)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:593:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::current-item (:pointer :int))
              (%imgui::items-getter (:pointer :void))
              (%imgui::data (:pointer :void))
              (%imgui::items-count :int)
              (%imgui::height-in-items :int))

(iffi:defifun ("__claw__ZN5ImGui13ListBoxHeaderEPKcii"
               %imgui::im-gui+list-box-header)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1977:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::items-count :int)
              (%imgui::height-in-items :int))

(iffi:defifun ("__claw__ZN5ImGui23LoadIniSettingsFromDiskEPKc"
               %imgui::im-gui+load-ini-settings-from-disk)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:861:29"
              (%imgui::ini-filename claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui25LoadIniSettingsFromMemoryEPKcm"
               %imgui::im-gui+load-ini-settings-from-memory)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:862:29"
              (%imgui::ini-data claw-utils:claw-string)
              (%imgui::ini-size %imgui::size-t))

(iffi:defifun ("__claw__ZN5ImGui10LogButtonsEv"
               %imgui::im-gui+log-buttons)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:749:29")

(iffi:defifun ("__claw__ZN5ImGui9LogFinishEv"
               %imgui::im-gui+log-finish)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:748:29")

(iffi:defifun ("__claw__ZN5ImGui7LogTextEPKcz"
               %imgui::im-gui+log-text)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:750:29"
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui14LogToClipboardEi"
               %imgui::im-gui+log-to-clipboard)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:747:29"
              (%imgui::auto-open-depth :int))

(iffi:defifun ("__claw__ZN5ImGui9LogToFileEiPKc"
               %imgui::im-gui+log-to-file)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:746:29"
              (%imgui::auto-open-depth :int)
              (%imgui::filename claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui8LogToTTYEi"
               %imgui::im-gui+log-to-tty)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:745:29"
              (%imgui::auto-open-depth :int))

(iffi:defifun ("__claw__ZN5ImGui8MemAllocEm"
               %imgui::im-gui+mem-alloc)
              (:pointer :void)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:873:29"
              (%imgui::size %imgui::size-t))

(iffi:defifun ("__claw__ZN5ImGui7MemFreeEPv" %imgui::im-gui+mem-free)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:874:29"
              (%imgui::ptr (:pointer :void)))

(iffi:defifun ("__claw__ZN5ImGui8MenuItemEPKcS1_Pbb"
               %imgui::im-gui+menu-item)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:620:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::shortcut claw-utils:claw-string)
              (%imgui::p-selected (:pointer :bool))
              (%imgui::enabled :bool))

(iffi:defifun ("__claw__ZN5ImGui8MenuItemEPKcS1_bb"
               %imgui::im-gui+menu-item)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:619:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::shortcut claw-utils:claw-string)
              (%imgui::selected :bool)
              (%imgui::enabled :bool))

(iffi:defifun ("__claw__ZN5ImGui8NewFrameEv"
               %imgui::im-gui+new-frame)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:268:29")

(iffi:defifun ("__claw__ZN5ImGui7NewLineEv" %imgui::im-gui+new-line)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:406:29")

(iffi:defifun ("__claw__ZN5ImGui10NextColumnEv"
               %imgui::im-gui+next-column)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:727:29")

(iffi:defifun ("__claw__ZN5ImGui9OpenPopupEPKci"
               %imgui::im-gui+open-popup)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:649:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::popup-flags %imgui::im-gui-popup-flags))

(iffi:defifun ("__claw__ZN5ImGui20OpenPopupOnItemClickEPKci"
               %imgui::im-gui+open-popup-on-item-click)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:650:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::popup-flags %imgui::im-gui-popup-flags))

(iffi:defifun ("__claw__ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i"
               %imgui::im-gui+plot-histogram)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:599:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::values (:pointer :float))
              (%imgui::values-count :int)
              (%imgui::values-offset :int)
              (%imgui::overlay-text claw-utils:claw-string)
              (%imgui::scale-min :float)
              (%imgui::scale-max :float)
              (%imgui::graph-size (:pointer %imgui::im-vec2))
              (%imgui::stride :int))

(iffi:defifun ("__claw__ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2"
               %imgui::im-gui+plot-histogram)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:600:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::values-getter (:pointer :void))
              (%imgui::data (:pointer :void))
              (%imgui::values-count :int)
              (%imgui::values-offset :int)
              (%imgui::overlay-text claw-utils:claw-string)
              (%imgui::scale-min :float)
              (%imgui::scale-max :float)
              (%imgui::graph-size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i"
               %imgui::im-gui+plot-lines)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:597:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::values (:pointer :float))
              (%imgui::values-count :int)
              (%imgui::values-offset :int)
              (%imgui::overlay-text claw-utils:claw-string)
              (%imgui::scale-min :float)
              (%imgui::scale-max :float)
              (%imgui::graph-size (:pointer %imgui::im-vec2))
              (%imgui::stride :int))

(iffi:defifun ("__claw__ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2"
               %imgui::im-gui+plot-lines)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:598:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::values-getter (:pointer :void))
              (%imgui::data (:pointer :void))
              (%imgui::values-count :int)
              (%imgui::values-offset :int)
              (%imgui::overlay-text claw-utils:claw-string)
              (%imgui::scale-min :float)
              (%imgui::scale-max :float)
              (%imgui::graph-size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui21PopAllowKeyboardFocusEv"
               %imgui::im-gui+pop-allow-keyboard-focus)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:376:29")

(iffi:defifun ("__claw__ZN5ImGui15PopButtonRepeatEv"
               %imgui::im-gui+pop-button-repeat)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:378:29")

(iffi:defifun ("__claw__ZN5ImGui11PopClipRectEv"
               %imgui::im-gui+pop-clip-rect)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:765:29")

(iffi:defifun ("__claw__ZN5ImGui7PopFontEv" %imgui::im-gui+pop-font)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:368:29")

(iffi:defifun ("__claw__ZN5ImGui5PopIDEv" %imgui::im-gui+pop-id)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:439:29")

(iffi:defifun ("__claw__ZN5ImGui12PopItemWidthEv"
               %imgui::im-gui+pop-item-width)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:382:29")

(iffi:defifun ("__claw__ZN5ImGui13PopStyleColorEi"
               %imgui::im-gui+pop-style-color)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:371:29"
              (%imgui::count :int))

(iffi:defifun ("__claw__ZN5ImGui11PopStyleVarEi"
               %imgui::im-gui+pop-style-var)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:374:29"
              (%imgui::count :int))

(iffi:defifun ("__claw__ZN5ImGui14PopTextWrapPosEv"
               %imgui::im-gui+pop-text-wrap-pos)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:386:29")

(iffi:defifun ("__claw__ZN5ImGui11ProgressBarEfRK6ImVec2PKc"
               %imgui::im-gui+progress-bar)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:473:29"
              (%imgui::fraction :float)
              (%imgui::size-arg (:pointer %imgui::im-vec2))
              (%imgui::overlay claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui22PushAllowKeyboardFocusEb"
               %imgui::im-gui+push-allow-keyboard-focus)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:375:29"
              (%imgui::allow-keyboard-focus :bool))

(iffi:defifun ("__claw__ZN5ImGui16PushButtonRepeatEb"
               %imgui::im-gui+push-button-repeat)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:377:29"
              (%imgui::repeat :bool))

(iffi:defifun ("__claw__ZN5ImGui12PushClipRectERK6ImVec2S2_b"
               %imgui::im-gui+push-clip-rect)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:764:29"
              (%imgui::clip-rect-min (:pointer %imgui::im-vec2))
              (%imgui::clip-rect-max (:pointer %imgui::im-vec2))
              (%imgui::intersect-with-current-clip-rect :bool))

(iffi:defifun ("__claw__ZN5ImGui8PushFontEP6ImFont"
               %imgui::im-gui+push-font)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:367:29"
              (%imgui::font (:pointer %imgui::im-font)))

(iffi:defifun ("__claw__ZN5ImGui6PushIDEPKc" %imgui::im-gui+push-id)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:435:29"
              (%imgui::str-id claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui6PushIDEPKcS1_"
               %imgui::im-gui+push-id)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:436:29"
              (%imgui::str-id-begin claw-utils:claw-string)
              (%imgui::str-id-end claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui6PushIDEPKv" %imgui::im-gui+push-id)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:437:29"
              (%imgui::ptr-id (:pointer :void)))

(iffi:defifun ("__claw__ZN5ImGui6PushIDEi" %imgui::im-gui+push-id)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:438:29"
              (%imgui::int-id :int))

(iffi:defifun ("__claw__ZN5ImGui13PushItemWidthEf"
               %imgui::im-gui+push-item-width)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:381:29"
              (%imgui::item-width :float))

(iffi:defifun ("__claw__ZN5ImGui14PushStyleColorEiRK6ImVec4"
               %imgui::im-gui+push-style-color)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:370:29"
              (%imgui::idx %imgui::im-gui-col)
              (%imgui::col (:pointer %imgui::im-vec4)))

(iffi:defifun ("__claw__ZN5ImGui14PushStyleColorEij"
               %imgui::im-gui+push-style-color)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:369:29"
              (%imgui::idx %imgui::im-gui-col)
              (%imgui::col %imgui::im-u32))

(iffi:defitype %imgui::im-gui-style-var
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:162:13")

(iffi:defifun ("__claw__ZN5ImGui12PushStyleVarEiRK6ImVec2"
               %imgui::im-gui+push-style-var)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:373:29"
              (%imgui::idx %imgui::im-gui-style-var)
              (%imgui::val (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui12PushStyleVarEif"
               %imgui::im-gui+push-style-var)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:372:29"
              (%imgui::idx %imgui::im-gui-style-var)
              (%imgui::val :float))

(iffi:defifun ("__claw__ZN5ImGui15PushTextWrapPosEf"
               %imgui::im-gui+push-text-wrap-pos)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:385:29"
              (%imgui::wrap-local-pos-x :float))

(iffi:defifun ("__claw__ZN5ImGui11RadioButtonEPKcPii"
               %imgui::im-gui+radio-button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:472:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :int))
              (%imgui::v-button :int))

(iffi:defifun ("__claw__ZN5ImGui11RadioButtonEPKcb"
               %imgui::im-gui+radio-button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:471:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::active :bool))

(iffi:defifun ("__claw__ZN5ImGui6RenderEv" %imgui::im-gui+render)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:270:29")

(iffi:defifun ("__claw__ZN5ImGui19ResetMouseDragDeltaEi"
               %imgui::im-gui+reset-mouse-drag-delta)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:848:29"
              (%imgui::button %imgui::im-gui-mouse-button))

(iffi:defifun ("__claw__ZN5ImGui8SameLineEff"
               %imgui::im-gui+same-line)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:405:29"
              (%imgui::offset-from-start-x :float)
              (%imgui::spacing :float))

(iffi:defifun ("__claw__ZN5ImGui21SaveIniSettingsToDiskEPKc"
               %imgui::im-gui+save-ini-settings-to-disk)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:863:29"
              (%imgui::ini-filename claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui23SaveIniSettingsToMemoryEPm"
               %imgui::im-gui+save-ini-settings-to-memory)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:864:29"
              (%imgui::out-ini-size (:pointer %imgui::size-t)))

(iffi:defitype %imgui::im-gui-selectable-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:178:13")

(iffi:defifun ("__claw__ZN5ImGui10SelectableEPKcPbiRK6ImVec2"
               %imgui::im-gui+selectable)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:582:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::p-selected (:pointer :bool))
              (%imgui::flags %imgui::im-gui-selectable-flags)
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui10SelectableEPKcbiRK6ImVec2"
               %imgui::im-gui+selectable)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:581:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::selected :bool)
              (%imgui::flags %imgui::im-gui-selectable-flags)
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui9SeparatorEv"
               %imgui::im-gui+separator)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:404:29")

(iffi:defifun ("__claw__ZN5ImGui21SetAllocatorFunctionsEPFPvmS0_EPFvS0_S0_ES0_"
               %imgui::im-gui+set-allocator-functions)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:872:29"
              (%imgui::alloc-func (:pointer :void))
              (%imgui::free-func (:pointer :void))
              (%imgui::user-data (:pointer :void)))

(iffi:defifun ("__claw__ZN5ImGui16SetClipboardTextEPKc"
               %imgui::im-gui+set-clipboard-text)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:856:29"
              (%imgui::text claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui19SetColorEditOptionsEi"
               %imgui::im-gui+set-color-edit-options)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:556:29"
              (%imgui::flags %imgui::im-gui-color-edit-flags))

(iffi:defifun ("__claw__ZN5ImGui15SetColumnOffsetEif"
               %imgui::im-gui+set-column-offset)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:732:29"
              (%imgui::column-index :int)
              (%imgui::offset-x :float))

(iffi:defifun ("__claw__ZN5ImGui14SetColumnWidthEif"
               %imgui::im-gui+set-column-width)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:730:29"
              (%imgui::column-index :int)
              (%imgui::width :float))

(iffi:defifun ("__claw__ZN5ImGui17SetCurrentContextEP12ImGuiContext"
               %imgui::im-gui+set-current-context)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:263:29"
              (%imgui::ctx (:pointer %imgui::im-gui-context)))

(iffi:defifun ("__claw__ZN5ImGui12SetCursorPosERK6ImVec2"
               %imgui::im-gui+set-cursor-pos)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:416:29"
              (%imgui::local-pos (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui13SetCursorPosXEf"
               %imgui::im-gui+set-cursor-pos-x)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:417:29"
              (%imgui::local-x :float))

(iffi:defifun ("__claw__ZN5ImGui13SetCursorPosYEf"
               %imgui::im-gui+set-cursor-pos-y)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:418:29"
              (%imgui::local-y :float))

(iffi:defifun ("__claw__ZN5ImGui18SetCursorScreenPosERK6ImVec2"
               %imgui::im-gui+set-cursor-screen-pos)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:421:29"
              (%imgui::pos (:pointer %imgui::im-vec2)))

(iffi:defitype %imgui::im-gui-cond
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:154:13")

(iffi:defifun ("__claw__ZN5ImGui18SetDragDropPayloadEPKcPKvmi"
               %imgui::im-gui+set-drag-drop-payload)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:755:29"
              (%imgui::type claw-utils:claw-string)
              (%imgui::data (:pointer :void))
              (%imgui::sz %imgui::size-t)
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui19SetItemAllowOverlapEv"
               %imgui::im-gui+set-item-allow-overlap)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:791:29")

(iffi:defifun ("__claw__ZN5ImGui19SetItemDefaultFocusEv"
               %imgui::im-gui+set-item-default-focus)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:769:29")

(iffi:defifun ("__claw__ZN5ImGui20SetKeyboardFocusHereEi"
               %imgui::im-gui+set-keyboard-focus-here)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:770:29"
              (%imgui::offset :int))

(iffi:defifun ("__claw__ZN5ImGui14SetMouseCursorEi"
               %imgui::im-gui+set-mouse-cursor)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:850:29"
              (%imgui::cursor-type %imgui::im-gui-mouse-cursor))

(iffi:defifun ("__claw__ZN5ImGui15SetNextItemOpenEbi"
               %imgui::im-gui+set-next-item-open)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:576:29"
              (%imgui::is-open :bool)
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui16SetNextItemWidthEf"
               %imgui::im-gui+set-next-item-width)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:383:29"
              (%imgui::item-width :float))

(iffi:defifun ("__claw__ZN5ImGui20SetNextWindowBgAlphaEf"
               %imgui::im-gui+set-next-window-bg-alpha)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:334:29"
              (%imgui::alpha :float))

(iffi:defifun ("__claw__ZN5ImGui22SetNextWindowCollapsedEbi"
               %imgui::im-gui+set-next-window-collapsed)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:332:29"
              (%imgui::collapsed :bool)
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui24SetNextWindowContentSizeERK6ImVec2"
               %imgui::im-gui+set-next-window-content-size)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:331:29"
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui18SetNextWindowFocusEv"
               %imgui::im-gui+set-next-window-focus)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:333:29")

(iffi:defifun ("__claw__ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_"
               %imgui::im-gui+set-next-window-pos)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:328:29"
              (%imgui::pos (:pointer %imgui::im-vec2))
              (%imgui::cond %imgui::im-gui-cond)
              (%imgui::pivot (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGui17SetNextWindowSizeERK6ImVec2i"
               %imgui::im-gui+set-next-window-size)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:329:29"
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defitype %imgui::im-gui-size-callback
               (:pointer :void)
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:195:16")

(iffi:defifun ("__claw__ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv"
               %imgui::im-gui+set-next-window-size-constraints)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:330:29"
              (%imgui::size-min (:pointer %imgui::im-vec2))
              (%imgui::size-max (:pointer %imgui::im-vec2))
              (%imgui::custom-callback %imgui::im-gui-size-callback)
              (%imgui::custom-callback-data (:pointer :void)))

(iffi:defifun ("__claw__ZN5ImGui17SetScrollFromPosXEff"
               %imgui::im-gui+set-scroll-from-pos-x)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:363:29"
              (%imgui::local-x :float)
              (%imgui::center-x-ratio :float))

(iffi:defifun ("__claw__ZN5ImGui17SetScrollFromPosYEff"
               %imgui::im-gui+set-scroll-from-pos-y)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:364:29"
              (%imgui::local-y :float)
              (%imgui::center-y-ratio :float))

(iffi:defifun ("__claw__ZN5ImGui14SetScrollHereXEf"
               %imgui::im-gui+set-scroll-here-x)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:361:29"
              (%imgui::center-x-ratio :float))

(iffi:defifun ("__claw__ZN5ImGui14SetScrollHereYEf"
               %imgui::im-gui+set-scroll-here-y)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:362:29"
              (%imgui::center-y-ratio :float))

(iffi:defifun ("__claw__ZN5ImGui10SetScrollXEf"
               %imgui::im-gui+set-scroll-x)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:357:29"
              (%imgui::scroll-x :float))

(iffi:defifun ("__claw__ZN5ImGui10SetScrollYEf"
               %imgui::im-gui+set-scroll-y)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:358:29"
              (%imgui::scroll-y :float))

(iffi:defifun ("__claw__ZN5ImGui15SetStateStorageEP12ImGuiStorage"
               %imgui::im-gui+set-state-storage)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:808:29"
              (%imgui::storage (:pointer %imgui::im-gui-storage)))

(iffi:defifun ("__claw__ZN5ImGui16SetTabItemClosedEPKc"
               %imgui::im-gui+set-tab-item-closed)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:741:29"
              (%imgui::tab-or-docked-window-label
               claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui10SetTooltipEPKcz"
               %imgui::im-gui+set-tooltip)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:626:29"
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui18SetWindowCollapsedEPKcbi"
               %imgui::im-gui+set-window-collapsed)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:342:29"
              (%imgui::name claw-utils:claw-string)
              (%imgui::collapsed :bool)
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui18SetWindowCollapsedEbi"
               %imgui::im-gui+set-window-collapsed)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:337:29"
              (%imgui::collapsed :bool)
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui14SetWindowFocusEv"
               %imgui::im-gui+set-window-focus)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:338:29")

(iffi:defifun ("__claw__ZN5ImGui14SetWindowFocusEPKc"
               %imgui::im-gui+set-window-focus)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:343:29"
              (%imgui::name claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui18SetWindowFontScaleEf"
               %imgui::im-gui+set-window-font-scale)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:339:29"
              (%imgui::scale :float))

(iffi:defifun ("__claw__ZN5ImGui12SetWindowPosERK6ImVec2i"
               %imgui::im-gui+set-window-pos)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:335:29"
              (%imgui::pos (:pointer %imgui::im-vec2))
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui12SetWindowPosEPKcRK6ImVec2i"
               %imgui::im-gui+set-window-pos)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:340:29"
              (%imgui::name claw-utils:claw-string)
              (%imgui::pos (:pointer %imgui::im-vec2))
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui13SetWindowSizeERK6ImVec2i"
               %imgui::im-gui+set-window-size)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:336:29"
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i"
               %imgui::im-gui+set-window-size)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:341:29"
              (%imgui::name claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGui15ShowAboutWindowEPb"
               %imgui::im-gui+show-about-window)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:276:29"
              (%imgui::p-open (:pointer :bool)))

(iffi:defifun ("__claw__ZN5ImGui14ShowDemoWindowEPb"
               %imgui::im-gui+show-demo-window)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:274:29"
              (%imgui::p-open (:pointer :bool)))

(iffi:defifun ("__claw__ZN5ImGui16ShowFontSelectorEPKc"
               %imgui::im-gui+show-font-selector)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:279:29"
              (%imgui::label claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui17ShowMetricsWindowEPb"
               %imgui::im-gui+show-metrics-window)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:275:29"
              (%imgui::p-open (:pointer :bool)))

(iffi:defifun ("__claw__ZN5ImGui15ShowStyleEditorEP10ImGuiStyle"
               %imgui::im-gui+show-style-editor)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:277:29"
              (%imgui::ref (:pointer %imgui::im-gui-style)))

(iffi:defifun ("__claw__ZN5ImGui17ShowStyleSelectorEPKc"
               %imgui::im-gui+show-style-selector)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:278:29"
              (%imgui::label claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui13ShowUserGuideEv"
               %imgui::im-gui+show-user-guide)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:280:29")

(iffi:defifun ("__claw__ZN5ImGui11SliderAngleEPKcPfffS1_i"
               %imgui::im-gui+slider-angle)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:519:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v-rad (:pointer :float))
              (%imgui::v-degrees-min :float)
              (%imgui::v-degrees-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui11SliderFloatEPKcPfffS1_i"
               %imgui::im-gui+slider-float)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:515:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :float))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui12SliderFloat2EPKcPfffS1_i"
               %imgui::im-gui+slider-float2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:516:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 2))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui12SliderFloat3EPKcPfffS1_i"
               %imgui::im-gui+slider-float3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:517:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 3))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui12SliderFloat4EPKcPfffS1_i"
               %imgui::im-gui+slider-float4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:518:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 4))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui9SliderIntEPKcPiiiS1_i"
               %imgui::im-gui+slider-int)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:520:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :int))
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui10SliderInt2EPKcPiiiS1_i"
               %imgui::im-gui+slider-int2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:521:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 2))
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui10SliderInt3EPKcPiiiS1_i"
               %imgui::im-gui+slider-int3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:522:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 3))
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui10SliderInt4EPKcPiiiS1_i"
               %imgui::im-gui+slider-int4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:523:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :int 4))
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i"
               %imgui::im-gui+slider-scalar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:524:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_f"
               %imgui::im-gui+slider-scalar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1991:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGui13SliderScalarNEPKciPviPKvS4_S1_i"
               %imgui::im-gui+slider-scalar-n)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:525:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::components :int)
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui13SliderScalarNEPKciPviPKvS4_S1_f"
               %imgui::im-gui+slider-scalar-n)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1992:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::components :int)
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGui11SmallButtonEPKc"
               %imgui::im-gui+small-button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:463:29"
              (%imgui::label claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui7SpacingEv" %imgui::im-gui+spacing)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:407:29")

(iffi:defifun ("__claw__ZN5ImGui18StyleColorsClassicEP10ImGuiStyle"
               %imgui::im-gui+style-colors-classic)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:286:29"
              (%imgui::dst (:pointer %imgui::im-gui-style)))

(iffi:defifun ("__claw__ZN5ImGui15StyleColorsDarkEP10ImGuiStyle"
               %imgui::im-gui+style-colors-dark)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:284:29"
              (%imgui::dst (:pointer %imgui::im-gui-style)))

(iffi:defifun ("__claw__ZN5ImGui16StyleColorsLightEP10ImGuiStyle"
               %imgui::im-gui+style-colors-light)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:285:29"
              (%imgui::dst (:pointer %imgui::im-gui-style)))

(iffi:defifun ("__claw__ZN5ImGui13TabItemButtonEPKci"
               %imgui::im-gui+tab-item-button)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:740:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-tab-item-flags))

(iffi:defifun ("__claw__ZN5ImGui19TableGetColumnCountEv"
               %imgui::im-gui+table-get-column-count)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:717:37")

(iffi:defitype %imgui::im-gui-table-column-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:183:13")

(iffi:defifun ("__claw__ZN5ImGui19TableGetColumnFlagsEi"
               %imgui::im-gui+table-get-column-flags)
              %imgui::im-gui-table-column-flags
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:721:37"
              (%imgui::column-n :int))

(iffi:defifun ("__claw__ZN5ImGui19TableGetColumnIndexEv"
               %imgui::im-gui+table-get-column-index)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:718:37")

(iffi:defifun ("__claw__ZN5ImGui18TableGetColumnNameEi"
               %imgui::im-gui+table-get-column-name)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:720:37"
              (%imgui::column-n :int))

(iffi:defifun ("__claw__ZN5ImGui16TableGetRowIndexEv"
               %imgui::im-gui+table-get-row-index)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:719:37")

(iffi:defitype %imgui::im-s16
               :short
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:210:29")

(iffi:defitype %imgui::im-gui-sort-direction
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:161:13")

(iffi:defistruct (%imgui::im-gui-table-column-sort-specs
                  :size-reporter
                  "__claw_sizeof_ImGuiTableColumnSortSpecs"
                  :alignment-reporter
                  "__claw_alignof_ImGuiTableColumnSortSpecs"
                  :constructor %imgui::im-gui-table-column-sort-specs
                  :destructor
                  %imgui::~im-gui-table-column-sort-specs)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1944:8"
                 (%imgui::column-user-id %imgui::im-gui-id :setter
                  "__claw_set_ImGuiTableColumnSortSpecs_ColumnUserID"
                  :getter
                  "__claw_get_ImGuiTableColumnSortSpecs_ColumnUserID"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1946:33")
                 (%imgui::column-index %imgui::im-s16 :setter
                  "__claw_set_ImGuiTableColumnSortSpecs_ColumnIndex"
                  :getter
                  "__claw_get_ImGuiTableColumnSortSpecs_ColumnIndex"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1947:33")
                 (%imgui::sort-order %imgui::im-s16 :setter
                  "__claw_set_ImGuiTableColumnSortSpecs_SortOrder"
                  :getter
                  "__claw_get_ImGuiTableColumnSortSpecs_SortOrder"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1948:33")
                 (%imgui::sort-direction
                  %imgui::im-gui-sort-direction :setter
                  "__claw_set_ImGuiTableColumnSortSpecs_SortDirection"
                  :getter
                  "__claw_get_ImGuiTableColumnSortSpecs_SortDirection"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1949:33"))

(iffi:defistruct (%imgui::im-gui-table-sort-specs :size-reporter
                  "__claw_sizeof_ImGuiTableSortSpecs"
                  :alignment-reporter
                  "__claw_alignof_ImGuiTableSortSpecs" :constructor
                  %imgui::im-gui-table-sort-specs :destructor
                  %imgui::~im-gui-table-sort-specs)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1958:8"
                 (%imgui::specs
                  (:pointer %imgui::im-gui-table-column-sort-specs)
                  :setter "__claw_set_ImGuiTableSortSpecs_Specs"
                  :getter "__claw_get_ImGuiTableSortSpecs_Specs"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1960:38")
                 (%imgui::specs-count :int :setter
                  "__claw_set_ImGuiTableSortSpecs_SpecsCount" :getter
                  "__claw_get_ImGuiTableSortSpecs_SpecsCount"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1961:33")
                 (%imgui::specs-dirty :bool :setter
                  "__claw_set_ImGuiTableSortSpecs_SpecsDirty" :getter
                  "__claw_get_ImGuiTableSortSpecs_SpecsDirty"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1962:33"))

(iffi:defifun ("__claw__ZN5ImGui17TableGetSortSpecsEv"
               %imgui::im-gui+table-get-sort-specs)
              (:pointer %imgui::im-gui-table-sort-specs)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:714:36")

(iffi:defifun ("__claw__ZN5ImGui11TableHeaderEPKc"
               %imgui::im-gui+table-header)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:707:29"
              (%imgui::label claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui15TableHeadersRowEv"
               %imgui::im-gui+table-headers-row)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:706:29")

(iffi:defifun ("__claw__ZN5ImGui15TableNextColumnEv"
               %imgui::im-gui+table-next-column)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:694:29")

(iffi:defitype %imgui::im-gui-table-row-flags
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:184:13")

(iffi:defifun ("__claw__ZN5ImGui12TableNextRowEif"
               %imgui::im-gui+table-next-row)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:693:29"
              (%imgui::row-flags %imgui::im-gui-table-row-flags)
              (%imgui::min-row-height :float))

(iffi:defitype %imgui::im-gui-table-bg-target
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:163:13")

(iffi:defifun ("__claw__ZN5ImGui15TableSetBgColorEiji"
               %imgui::im-gui+table-set-bg-color)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:722:37"
              (%imgui::target %imgui::im-gui-table-bg-target)
              (%imgui::color %imgui::im-u32)
              (%imgui::column-n :int))

(iffi:defifun ("__claw__ZN5ImGui19TableSetColumnIndexEi"
               %imgui::im-gui+table-set-column-index)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:695:29"
              (%imgui::column-n :int))

(iffi:defifun ("__claw__ZN5ImGui16TableSetupColumnEPKcifj"
               %imgui::im-gui+table-setup-column)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:704:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-table-column-flags)
              (%imgui::init-width-or-weight :float)
              (%imgui::user-id %imgui::im-u32))

(iffi:defifun ("__claw__ZN5ImGui22TableSetupScrollFreezeEii"
               %imgui::im-gui+table-setup-scroll-freeze)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:705:29"
              (%imgui::cols :int)
              (%imgui::rows :int))

(iffi:defifun ("__claw__ZN5ImGui4TextEPKcz" %imgui::im-gui+text)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:446:29"
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui11TextColoredERK6ImVec4PKcz"
               %imgui::im-gui+text-colored)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:448:29"
              (%imgui::col (:pointer %imgui::im-vec4))
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui12TextDisabledEPKcz"
               %imgui::im-gui+text-disabled)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:450:29"
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui15TextUnformattedEPKcS1_"
               %imgui::im-gui+text-unformatted)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:445:29"
              (%imgui::text claw-utils:claw-string)
              (%imgui::text-end claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui11TextWrappedEPKcz"
               %imgui::im-gui+text-wrapped)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:452:29"
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui8TreeNodeEPKc"
               %imgui::im-gui+tree-node)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:560:29"
              (%imgui::label claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui8TreeNodeEPKcS1_z"
               %imgui::im-gui+tree-node)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:561:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui8TreeNodeEPKvPKcz"
               %imgui::im-gui+tree-node)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:562:29"
              (%imgui::ptr-id (:pointer :void))
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui10TreeNodeExEPKci"
               %imgui::im-gui+tree-node-ex)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:565:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-tree-node-flags))

(iffi:defifun ("__claw__ZN5ImGui10TreeNodeExEPKciS1_z"
               %imgui::im-gui+tree-node-ex)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:566:29"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-tree-node-flags)
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui10TreeNodeExEPKviPKcz"
               %imgui::im-gui+tree-node-ex)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:567:29"
              (%imgui::ptr-id (:pointer :void))
              (%imgui::flags %imgui::im-gui-tree-node-flags)
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZN5ImGui7TreePopEv" %imgui::im-gui+tree-pop)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:572:29")

(iffi:defifun ("__claw__ZN5ImGui8TreePushEPKc"
               %imgui::im-gui+tree-push)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:570:29"
              (%imgui::str-id claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui8TreePushEPKv"
               %imgui::im-gui+tree-push)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:571:29"
              (%imgui::ptr-id (:pointer :void)))

(iffi:defifun ("__claw__ZN5ImGui8UnindentEf" %imgui::im-gui+unindent)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:410:29"
              (%imgui::indent-w :float))

(iffi:defifun ("__claw__ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i"
               %imgui::im-gui+v-slider-float)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:526:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::v (:pointer :float))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_i"
               %imgui::im-gui+v-slider-int)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:527:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::v (:pointer :int))
              (%imgui::v-min :int)
              (%imgui::v-max :int)
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui13VSliderScalarEPKcRK6ImVec2iPvPKvS7_S1_i"
               %imgui::im-gui+v-slider-scalar)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:528:29"
              (%imgui::label claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2))
              (%imgui::data-type %imgui::im-gui-data-type)
              (%imgui::p-data (:pointer :void))
              (%imgui::p-min (:pointer :void))
              (%imgui::p-max (:pointer :void))
              (%imgui::format claw-utils:claw-string)
              (%imgui::flags %imgui::im-gui-slider-flags))

(iffi:defifun ("__claw__ZN5ImGui5ValueEPKci" %imgui::im-gui+value)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:605:29"
              (%imgui::prefix claw-utils:claw-string)
              (%imgui::v :int))

(iffi:defifun ("__claw__ZN5ImGui5ValueEPKcb" %imgui::im-gui+value)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:604:29"
              (%imgui::prefix claw-utils:claw-string)
              (%imgui::b :bool))

(iffi:defifun ("__claw__ZN5ImGui5ValueEPKcfS1_" %imgui::im-gui+value)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:607:29"
              (%imgui::prefix claw-utils:claw-string)
              (%imgui::v :float)
              (%imgui::float-format claw-utils:claw-string))

(iffi:defifun ("__claw__ZN5ImGui5ValueEPKcj" %imgui::im-gui+value)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:606:29"
              (%imgui::prefix claw-utils:claw-string)
              (%imgui::v :unsigned-int))

(iffi:defifun ("__claw__ZN7ImGuiIO17AddInputCharacterEj"
               %imgui::add-input-character)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1815:21"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-io))
              (%imgui::c :unsigned-int))

(iffi:defifun ("__claw__ZN7ImGuiIO22AddInputCharacterUTF16Et"
               %imgui::add-input-character-utf16)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1816:21"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-io))
              (%imgui::c %imgui::im-wchar16))

(iffi:defifun ("__claw__ZN7ImGuiIO22AddInputCharactersUTF8EPKc"
               %imgui::add-input-characters-utf8)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1817:21"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-io))
              (%imgui::str claw-utils:claw-string))

(iffi:defifun ("__claw__ZN7ImGuiIO20ClearInputCharactersEv"
               %imgui::clear-input-characters)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1818:21"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-io)))

(iffi:defifun ("__claw__ZN7ImGuiIOC1Ev" %imgui::im-gui-io)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1866:17"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-io)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiIO_claw_dtor"
               %imgui::~im-gui-io)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1740:8"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-io)))

(iffi:defistruct (%imgui::im-gui-input-text-callback-data
                  :size-reporter
                  "__claw_sizeof_ImGuiInputTextCallbackData"
                  :alignment-reporter
                  "__claw_alignof_ImGuiInputTextCallbackData"
                  :constructor
                  %imgui::im-gui-input-text-callback-data :destructor
                  %imgui::~im-gui-input-text-callback-data)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1882:8"
                 (%imgui::event-flag %imgui::im-gui-input-text-flags
                  :setter
                  "__claw_set_ImGuiInputTextCallbackData_EventFlag"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_EventFlag"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1884:25")
                 (%imgui::flags %imgui::im-gui-input-text-flags
                  :setter
                  "__claw_set_ImGuiInputTextCallbackData_Flags"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_Flags"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1885:25")
                 (%imgui::user-data (:pointer :void) :setter
                  "__claw_set_ImGuiInputTextCallbackData_UserData"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_UserData"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1886:25")
                 (%imgui::event-char %imgui::im-wchar :setter
                  "__claw_set_ImGuiInputTextCallbackData_EventChar"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_EventChar"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1891:25")
                 (%imgui::event-key %imgui::im-gui-key :setter
                  "__claw_set_ImGuiInputTextCallbackData_EventKey"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_EventKey"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1892:25")
                 (%imgui::buf claw-utils:claw-string :setter
                  "__claw_set_ImGuiInputTextCallbackData_Buf" :getter
                  "__claw_get_ImGuiInputTextCallbackData_Buf"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1893:25")
                 (%imgui::buf-text-len :int :setter
                  "__claw_set_ImGuiInputTextCallbackData_BufTextLen"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_BufTextLen"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1894:25")
                 (%imgui::buf-size :int :setter
                  "__claw_set_ImGuiInputTextCallbackData_BufSize"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_BufSize"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1895:25")
                 (%imgui::buf-dirty :bool :setter
                  "__claw_set_ImGuiInputTextCallbackData_BufDirty"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_BufDirty"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1896:25")
                 (%imgui::cursor-pos :int :setter
                  "__claw_set_ImGuiInputTextCallbackData_CursorPos"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_CursorPos"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1897:25")
                 (%imgui::selection-start :int :setter
                  "__claw_set_ImGuiInputTextCallbackData_SelectionStart"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_SelectionStart"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1898:25")
                 (%imgui::selection-end :int :setter
                  "__claw_set_ImGuiInputTextCallbackData_SelectionEnd"
                  :getter
                  "__claw_get_ImGuiInputTextCallbackData_SelectionEnd"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1899:25"))

(iffi:defifun ("__claw__ZN26ImGuiInputTextCallbackData14ClearSelectionEv"
               %imgui::clear-selection)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1907:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-input-text-callback-data)))

(iffi:defifun ("__claw__ZN26ImGuiInputTextCallbackData11DeleteCharsEii"
               %imgui::delete-chars)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1904:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-input-text-callback-data))
              (%imgui::pos :int)
              (%imgui::bytes-count :int))

(iffi:defifun ("__claw__ZNK26ImGuiInputTextCallbackData12HasSelectionEv"
               %imgui::has-selection :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1908:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-input-text-callback-data)))

(iffi:defifun ("__claw__ZN26ImGuiInputTextCallbackDataC1Ev"
               %imgui::im-gui-input-text-callback-data)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1903:15"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-input-text-callback-data)))

(iffi:defifun ("__claw__ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_"
               %imgui::insert-chars)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1905:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-input-text-callback-data))
              (%imgui::pos :int)
              (%imgui::text claw-utils:claw-string)
              (%imgui::text-end claw-utils:claw-string))

(iffi:defifun ("__claw__ZN26ImGuiInputTextCallbackData9SelectAllEv"
               %imgui::select-all)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1906:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-input-text-callback-data)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiInputTextCallbackData_claw_dtor"
               %imgui::~im-gui-input-text-callback-data)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1882:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-input-text-callback-data)))

(iffi:defistruct (%imgui::im-gui-list-clipper :size-reporter
                  "__claw_sizeof_ImGuiListClipper"
                  :alignment-reporter
                  "__claw_alignof_ImGuiListClipper" :constructor
                  %imgui::im-gui-list-clipper :destructor
                  %imgui::~im-gui-list-clipper)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2148:8"
                 (%imgui::display-start :int :setter
                  "__claw_set_ImGuiListClipper_DisplayStart" :getter
                  "__claw_get_ImGuiListClipper_DisplayStart"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2150:13")
                 (%imgui::display-end :int :setter
                  "__claw_set_ImGuiListClipper_DisplayEnd" :getter
                  "__claw_get_ImGuiListClipper_DisplayEnd"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2151:13")
                 (%imgui::items-count :int :setter
                  "__claw_set_ImGuiListClipper_ItemsCount" :getter
                  "__claw_get_ImGuiListClipper_ItemsCount"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2154:13")
                 (%imgui::step-no :int :setter
                  "__claw_set_ImGuiListClipper_StepNo" :getter
                  "__claw_get_ImGuiListClipper_StepNo" :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2155:13")
                 (%imgui::items-frozen :int :setter
                  "__claw_set_ImGuiListClipper_ItemsFrozen" :getter
                  "__claw_get_ImGuiListClipper_ItemsFrozen"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2156:13")
                 (%imgui::items-height :float :setter
                  "__claw_set_ImGuiListClipper_ItemsHeight" :getter
                  "__claw_get_ImGuiListClipper_ItemsHeight"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2157:13")
                 (%imgui::start-pos-y :float :setter
                  "__claw_set_ImGuiListClipper_StartPosY" :getter
                  "__claw_get_ImGuiListClipper_StartPosY"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2158:13"))

(iffi:defifun ("__claw__ZN16ImGuiListClipper5BeginEif" %imgui::begin)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2165:20"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-list-clipper))
              (%imgui::items-count :int)
              (%imgui::items-height :float))

(iffi:defifun ("__claw__ZN16ImGuiListClipper3EndEv" %imgui::end)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2166:20"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-list-clipper)))

(iffi:defifun ("__claw__ZN16ImGuiListClipperC1Ev"
               %imgui::im-gui-list-clipper)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2160:15"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-list-clipper)))

(iffi:defifun ("__claw__ZN16ImGuiListClipperC1Eif"
               %imgui::im-gui-list-clipper)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2170:12"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-list-clipper))
              (%imgui::items-count :int)
              (%imgui::items-height :float))

(iffi:defifun ("__claw__ZN16ImGuiListClipper4StepEv" %imgui::step)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2167:20"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-list-clipper)))

(iffi:defifun ("__claw__ZN16ImGuiListClipperD1Ev"
               %imgui::~im-gui-list-clipper)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2161:15"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-list-clipper)))

(iffi:defistruct (%imgui::im-gui-once-upon-a-frame :size-reporter
                  "__claw_sizeof_ImGuiOnceUponAFrame"
                  :alignment-reporter
                  "__claw_alignof_ImGuiOnceUponAFrame" :constructor
                  %imgui::im-gui-once-upon-a-frame :destructor
                  %imgui::~im-gui-once-upon-a-frame)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2026:8"
                 (%imgui::ref-frame :int :setter
                  "__claw_set_ImGuiOnceUponAFrame_RefFrame" :getter
                  "__claw_get_ImGuiOnceUponAFrame_RefFrame"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2029:17"))

(iffi:defifun ("__claw__ZN19ImGuiOnceUponAFrameC1Ev"
               %imgui::im-gui-once-upon-a-frame)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2028:5"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-once-upon-a-frame)))

(iffi:defifun ("__claw__ZNK19ImGuiOnceUponAFramecvbEv"
               %imgui::operator+bool :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2030:5"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-once-upon-a-frame)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiOnceUponAFrame_claw_dtor"
               %imgui::~im-gui-once-upon-a-frame)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2026:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-once-upon-a-frame)))

(iffi:defifun ("__claw__ZN12ImGuiPayload5ClearEv" %imgui::clear)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1937:10"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-payload)))

(iffi:defifun ("__claw__ZN12ImGuiPayloadC1Ev" %imgui::im-gui-payload)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1936:5"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-payload)))

(iffi:defifun ("__claw__ZNK12ImGuiPayload10IsDataTypeEPKc"
               %imgui::is-data-type :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1938:10"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-payload))
              (%imgui::type claw-utils:claw-string))

(iffi:defifun ("__claw__ZNK12ImGuiPayload10IsDeliveryEv"
               %imgui::is-delivery :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1940:10"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-payload)))

(iffi:defifun ("__claw__ZNK12ImGuiPayload9IsPreviewEv"
               %imgui::is-preview :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1939:10"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-payload)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiPayload_claw_dtor"
               %imgui::~im-gui-payload)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1922:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-payload)))

(iffi:defistruct (%imgui::im-gui-size-callback-data :size-reporter
                  "__claw_sizeof_ImGuiSizeCallbackData"
                  :alignment-reporter
                  "__claw_alignof_ImGuiSizeCallbackData" :constructor
                  %imgui::im-gui-size-callback-data :destructor
                  %imgui::~im-gui-size-callback-data)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1913:8"
                 (%imgui::user-data (:pointer :void) :setter
                  "__claw_set_ImGuiSizeCallbackData_UserData" :getter
                  "__claw_get_ImGuiSizeCallbackData_UserData"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1915:13"))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiSizeCallbackData_claw_ctor"
               %imgui::im-gui-size-callback-data)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1913:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-size-callback-data)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiSizeCallbackData_claw_dtor"
               %imgui::~im-gui-size-callback-data)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1913:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-size-callback-data)))

(iffi:defifun ("__claw__ZN12ImGuiStorage14BuildSortByKeyEv"
               %imgui::build-sort-by-key)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2128:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage)))

(iffi:defifun ("__claw__ZN12ImGuiStorage5ClearEv" %imgui::clear)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2105:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage)))

(iffi:defifun ("__claw__ZNK12ImGuiStorage7GetBoolEjb"
               %imgui::get-bool :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2108:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::default-val :bool))

(iffi:defifun ("__claw__ZN12ImGuiStorage10GetBoolRefEjb"
               %imgui::get-bool-ref)
              (:pointer :bool)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2120:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::default-val :bool))

(iffi:defifun ("__claw__ZNK12ImGuiStorage8GetFloatEjf"
               %imgui::get-float :non-mutating t)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2110:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::default-val :float))

(iffi:defifun ("__claw__ZN12ImGuiStorage11GetFloatRefEjf"
               %imgui::get-float-ref)
              (:pointer :float)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2121:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::default-val :float))

(iffi:defifun ("__claw__ZNK12ImGuiStorage6GetIntEji" %imgui::get-int
               :non-mutating t)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2106:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::default-val :int))

(iffi:defifun ("__claw__ZN12ImGuiStorage9GetIntRefEji"
               %imgui::get-int-ref)
              (:pointer :int)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2119:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::default-val :int))

(iffi:defifun ("__claw__ZNK12ImGuiStorage10GetVoidPtrEj"
               %imgui::get-void-ptr :non-mutating t)
              (:pointer :void)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2112:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id))

(iffi:defifun ("__claw__ZN12ImGuiStorage13GetVoidPtrRefEjPv"
               %imgui::get-void-ptr-ref)
              (:pointer (:pointer :void))
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2122:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::default-val (:pointer :void)))

(iffi:defifun ("__claw__ZN12ImGuiStorage9SetAllIntEi"
               %imgui::set-all-int)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2125:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::val :int))

(iffi:defifun ("__claw__ZN12ImGuiStorage7SetBoolEjb"
               %imgui::set-bool)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2109:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::val :bool))

(iffi:defifun ("__claw__ZN12ImGuiStorage8SetFloatEjf"
               %imgui::set-float)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2111:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::val :float))

(iffi:defifun ("__claw__ZN12ImGuiStorage6SetIntEji" %imgui::set-int)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2107:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::val :int))

(iffi:defifun ("__claw__ZN12ImGuiStorage10SetVoidPtrEjPv"
               %imgui::set-void-ptr)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2113:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage))
              (%imgui::key %imgui::im-gui-id)
              (%imgui::val (:pointer :void)))

(iffi:defistruct (%imgui::im-gui-storage+im-gui-storage-pair
                  :size-reporter
                  "__claw_sizeof_ImGuiStorage_ImGuiStoragePair"
                  :alignment-reporter
                  "__claw_alignof_ImGuiStorage_ImGuiStoragePair"
                  :constructor %imgui::im-gui-storage-pair
                  :destructor %imgui::~im-gui-storage-pair)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2091:12"
                 (%imgui::key %imgui::im-gui-id :setter
                  "__claw_set_ImGuiStorage_ImGuiStoragePair_key"
                  :getter
                  "__claw_get_ImGuiStorage_ImGuiStoragePair_key"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2093:17"))

(iffi:defifun ("__claw__ZN12ImGuiStorage16ImGuiStoragePairC1EjPv"
               %imgui::im-gui-storage-pair)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2097:9"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage+im-gui-storage-pair))
              (%imgui::%key %imgui::im-gui-id)
              (%imgui::%val-p (:pointer :void)))

(iffi:defifun ("__claw__ZN12ImGuiStorage16ImGuiStoragePairC1Eji"
               %imgui::im-gui-storage-pair)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2095:9"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage+im-gui-storage-pair))
              (%imgui::%key %imgui::im-gui-id)
              (%imgui::%val-i :int))

(iffi:defifun ("__claw__ZN12ImGuiStorage16ImGuiStoragePairC1Ejf"
               %imgui::im-gui-storage-pair)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2096:9"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage+im-gui-storage-pair))
              (%imgui::%key %imgui::im-gui-id)
              (%imgui::%val-f :float))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiStorageE40SE40ImGuiStoragePair_claw_dtor"
               %imgui::~im-gui-storage-pair)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2091:12"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage+im-gui-storage-pair)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiStorage_claw_ctor"
               %imgui::im-gui-storage)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2088:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiStorage_claw_dtor"
               %imgui::~im-gui-storage)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2088:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-storage)))

(iffi:defifun ("__claw__ZN10ImGuiStyleC1Ev" %imgui::im-gui-style)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1729:15"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-style)))

(iffi:defifun ("__claw__ZN10ImGuiStyle13ScaleAllSizesEf"
               %imgui::scale-all-sizes)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1730:20"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-style))
              (%imgui::scale-factor :float))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiStyle_claw_dtor"
               %imgui::~im-gui-style)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1686:8"
              (%imgui::%%claw-this- (:pointer %imgui::im-gui-style)))

(iffi:defifun ("__claw__ZN25ImGuiTableColumnSortSpecsC1Ev"
               %imgui::im-gui-table-column-sort-specs)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1951:5"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-table-column-sort-specs)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiTableColumnSortSpecs_claw_dtor"
               %imgui::~im-gui-table-column-sort-specs)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1944:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-table-column-sort-specs)))

(iffi:defifun ("__claw__ZN19ImGuiTableSortSpecsC1Ev"
               %imgui::im-gui-table-sort-specs)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1964:5"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-table-sort-specs)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiTableSortSpecs_claw_dtor"
               %imgui::~im-gui-table-sort-specs)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1958:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-table-sort-specs)))

(iffi:defistruct (%imgui::im-gui-text-buffer :size-reporter
                  "__claw_sizeof_ImGuiTextBuffer" :alignment-reporter
                  "__claw_alignof_ImGuiTextBuffer" :constructor
                  %imgui::im-gui-text-buffer :destructor
                  %imgui::~im-gui-text-buffer)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2061:8")

(iffi:defifun ("__claw__ZN15ImGuiTextBufferC1Ev"
               %imgui::im-gui-text-buffer)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2066:5"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer)))

(iffi:defifun ("__claw__ZN15ImGuiTextBuffer6appendEPKcS1_"
               %imgui::append)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2075:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer))
              (%imgui::str claw-utils:claw-string)
              (%imgui::str-end claw-utils:claw-string))

(iffi:defifun ("__claw__ZN15ImGuiTextBuffer7appendfEPKcz"
               %imgui::appendf)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2076:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer))
              (%imgui::fmt claw-utils:claw-string)
              &rest)

(iffi:defifun ("__claw__ZNK15ImGuiTextBuffer5beginEv" %imgui::begin
               :non-mutating t)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2068:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer)))

(iffi:defifun ("__claw__ZNK15ImGuiTextBuffer5c_strEv" %imgui::c-str
               :non-mutating t)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2074:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer)))

(iffi:defifun ("__claw__ZN15ImGuiTextBuffer5clearEv" %imgui::clear)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2072:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer)))

(iffi:defifun ("__claw__ZNK15ImGuiTextBuffer5emptyEv" %imgui::empty
               :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2071:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer)))

(iffi:defifun ("__claw__ZNK15ImGuiTextBuffer3endEv" %imgui::end
               :non-mutating t)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2069:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer)))

(iffi:defifun ("__claw__ZNK15ImGuiTextBufferixEi" %imgui::operator[]
               :non-mutating t)
              :char
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2067:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer))
              (%imgui::i :int))

(iffi:defifun ("__claw__ZN15ImGuiTextBuffer7reserveEi"
               %imgui::reserve)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2073:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer))
              (%imgui::capacity :int))

(iffi:defifun ("__claw__ZNK15ImGuiTextBuffer4sizeEv" %imgui::size
               :non-mutating t)
              :int
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2070:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiTextBuffer_claw_dtor"
               %imgui::~im-gui-text-buffer)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2061:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-buffer)))

(iffi:defistruct (%imgui::im-gui-text-filter :size-reporter
                  "__claw_sizeof_ImGuiTextFilter" :alignment-reporter
                  "__claw_alignof_ImGuiTextFilter" :constructor
                  %imgui::im-gui-text-filter :destructor
                  %imgui::~im-gui-text-filter)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2034:8"
                 (%imgui::input-buf claw-utils:claw-string :setter
                  nil :getter "__claw_get_ImGuiTextFilter_InputBuf"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2054:29")
                 (%imgui::count-grep :int :setter
                  "__claw_set_ImGuiTextFilter_CountGrep" :getter
                  "__claw_get_ImGuiTextFilter_CountGrep"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2056:29"))

(iffi:defifun ("__claw__ZN15ImGuiTextFilter5BuildEv" %imgui::build)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2039:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-filter)))

(iffi:defifun ("__claw__ZN15ImGuiTextFilter5ClearEv" %imgui::clear)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2040:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-filter)))

(iffi:defifun ("__claw__ZN15ImGuiTextFilter4DrawEPKcf" %imgui::draw)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2037:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-filter))
              (%imgui::label claw-utils:claw-string)
              (%imgui::width :float))

(iffi:defifun ("__claw__ZN15ImGuiTextFilterC1EPKc"
               %imgui::im-gui-text-filter)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2036:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-filter))
              (%imgui::default-filter claw-utils:claw-string))

(iffi:defifun ("__claw__ZNK15ImGuiTextFilter8IsActiveEv"
               %imgui::is-active :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2041:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-filter)))

(iffi:defifun ("__claw__ZNK15ImGuiTextFilter10PassFilterEPKcS1_"
               %imgui::pass-filter :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2038:25"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-filter))
              (%imgui::text claw-utils:claw-string)
              (%imgui::text-end claw-utils:claw-string))

(iffi:defistruct (%imgui::im-gui-text-filter+im-gui-text-range
                  :size-reporter
                  "__claw_sizeof_ImGuiTextFilter_ImGuiTextRange"
                  :alignment-reporter
                  "__claw_alignof_ImGuiTextFilter_ImGuiTextRange"
                  :constructor %imgui::im-gui-text-range :destructor
                  %imgui::~im-gui-text-range)
                 nil
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2044:12"
                 (%imgui::b claw-utils:claw-string :setter
                  "__claw_set_ImGuiTextFilter_ImGuiTextRange_b"
                  :getter
                  "__claw_get_ImGuiTextFilter_ImGuiTextRange_b"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2046:25")
                 (%imgui::e claw-utils:claw-string :setter
                  "__claw_set_ImGuiTextFilter_ImGuiTextRange_e"
                  :getter
                  "__claw_get_ImGuiTextFilter_ImGuiTextRange_e"
                  :documentation
                  "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2047:25"))

(iffi:defifun ("__claw__ZN15ImGuiTextFilter14ImGuiTextRangeC1Ev"
               %imgui::im-gui-text-range)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2049:9"
              (%imgui::%%claw-this-
               (:pointer
                %imgui::im-gui-text-filter+im-gui-text-range)))

(iffi:defifun ("__claw__ZN15ImGuiTextFilter14ImGuiTextRangeC1EPKcS2_"
               %imgui::im-gui-text-range)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2050:9"
              (%imgui::%%claw-this-
               (:pointer
                %imgui::im-gui-text-filter+im-gui-text-range))
              (%imgui::%b claw-utils:claw-string)
              (%imgui::%e claw-utils:claw-string))

(iffi:defifun ("__claw__ZNK15ImGuiTextFilter14ImGuiTextRange5emptyEv"
               %imgui::empty :non-mutating t)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2051:25"
              (%imgui::%%claw-this-
               (:pointer
                %imgui::im-gui-text-filter+im-gui-text-range)))

(iffi:deficlass (%imgui::im-vector<im-gui-text-filter+im-gui-text-range>
                 :size-reporter
                 "__claw_sizeof_ImVector_ImGuiTextFilter_ImGuiTextRange_"
                 :alignment-reporter
                 "__claw_alignof_ImVector_ImGuiTextFilter_ImGuiTextRange_")
                nil
                "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1620:8"
                (%imgui::size :int :setter
                 "__claw_set_ImVector_ImGuiTextFilter_ImGuiTextRange__Size"
                 :getter
                 "__claw_get_ImVector_ImGuiTextFilter_ImGuiTextRange__Size"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1622:25")
                (%imgui::capacity :int :setter
                 "__claw_set_ImVector_ImGuiTextFilter_ImGuiTextRange__Capacity"
                 :getter
                 "__claw_get_ImVector_ImGuiTextFilter_ImGuiTextRange__Capacity"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1623:25")
                (%imgui::data
                 (:pointer
                  %imgui::im-gui-text-filter+im-gui-text-range)
                 :setter
                 "__claw_set_ImVector_ImGuiTextFilter_ImGuiTextRange__Data"
                 :getter
                 "__claw_get_ImVector_ImGuiTextFilter_ImGuiTextRange__Data"
                 :documentation
                 "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1624:25"))

(iffi:defifun ("__claw__ZNK15ImGuiTextFilter14ImGuiTextRange5splitEcP8ImVectorIS0_E"
               %imgui::split :non-mutating t)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2052:25"
              (%imgui::%%claw-this-
               (:pointer
                %imgui::im-gui-text-filter+im-gui-text-range))
              (%imgui::separator :char)
              (%imgui::out
               (:pointer
                %imgui::im-vector<im-gui-text-filter+im-gui-text-range>)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiTextFilterE40SE40ImGuiTextRange_claw_dtor"
               %imgui::~im-gui-text-range)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2044:12"
              (%imgui::%%claw-this-
               (:pointer
                %imgui::im-gui-text-filter+im-gui-text-range)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiTextFilter_claw_dtor"
               %imgui::~im-gui-text-filter)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2034:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-text-filter)))

(iffi:defifun ("__claw__ZNK13ImGuiViewport9GetCenterEv"
               %imgui::get-center :non-mutating t)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2768:25"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2))
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-viewport)))

(iffi:defifun ("__claw__ZNK13ImGuiViewport13GetWorkCenterEv"
               %imgui::get-work-center :non-mutating t)
              (:pointer %imgui::im-vec2)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2769:25"
              (%imgui::%%claw-result- (:pointer %imgui::im-vec2))
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-viewport)))

(iffi:defifun ("__claw__ZN13ImGuiViewportC1Ev"
               %imgui::im-gui-viewport)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2765:5"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-viewport)))

(iffi:defifun ("__claw_cE3AE40SE40ImGuiViewport_claw_dtor"
               %imgui::~im-gui-viewport)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2757:8"
              (%imgui::%%claw-this-
               (:pointer %imgui::im-gui-viewport)))

(iffi:defifun ("__claw__ZN5ImGuiL23BeginPopupContextWindowEPKcib"
               %imgui::im-gui+begin-popup-context-window)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1998:25"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::mb %imgui::im-gui-mouse-button)
              (%imgui::over-items :bool))

(iffi:defifun ("__claw__ZN5ImGuiL9DragFloatEPKcPffffS1_f"
               %imgui::im-gui+drag-float)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1987:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :float))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGuiL10DragFloat2EPKcPffffS1_f"
               %imgui::im-gui+drag-float2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1988:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 2))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGuiL10DragFloat3EPKcPffffS1_f"
               %imgui::im-gui+drag-float3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1989:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 3))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGuiL10DragFloat4EPKcPffffS1_f"
               %imgui::im-gui+drag-float4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1990:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 4))
              (%imgui::v-speed :float)
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGuiL26GetContentRegionAvailWidthEv"
               %imgui::im-gui+get-content-region-avail-width)
              :float
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2004:25")

(iffi:defifun ("__claw__ZN5ImGuiL18GetOverlayDrawListEv"
               %imgui::im-gui+get-overlay-draw-list)
              (:pointer %imgui::im-draw-list)
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2006:31")

(iffi:defifun ("__claw__ZN5ImGuiL13ListBoxFooterEv"
               %imgui::im-gui+list-box-footer)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1979:25")

(iffi:defifun ("__claw__ZN5ImGuiL13ListBoxHeaderEPKcRK6ImVec2"
               %imgui::im-gui+list-box-header)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1978:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::size (:pointer %imgui::im-vec2)))

(iffi:defifun ("__claw__ZN5ImGuiL20OpenPopupContextItemEPKci"
               %imgui::im-gui+open-popup-context-item)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1981:25"
              (%imgui::str-id claw-utils:claw-string)
              (%imgui::mb %imgui::im-gui-mouse-button))

(iffi:defifun ("__claw__ZN5ImGuiL19SetNextTreeNodeOpenEbi"
               %imgui::im-gui+set-next-tree-node-open)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2002:25"
              (%imgui::open :bool)
              (%imgui::cond %imgui::im-gui-cond))

(iffi:defifun ("__claw__ZN5ImGuiL13SetScrollHereEf"
               %imgui::im-gui+set-scroll-here)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2008:25"
              (%imgui::center-ratio :float))

(iffi:defifun ("__claw__ZN5ImGuiL11SliderFloatEPKcPfffS1_f"
               %imgui::im-gui+slider-float)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1993:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:pointer :float))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGuiL12SliderFloat2EPKcPfffS1_f"
               %imgui::im-gui+slider-float2)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1994:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 2))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGuiL12SliderFloat3EPKcPfffS1_f"
               %imgui::im-gui+slider-float3)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1995:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 3))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGuiL12SliderFloat4EPKcPfffS1_f"
               %imgui::im-gui+slider-float4)
              :bool
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:1996:25"
              (%imgui::label claw-utils:claw-string)
              (%imgui::v (:array :float 4))
              (%imgui::v-min :float)
              (%imgui::v-max :float)
              (%imgui::format claw-utils:claw-string)
              (%imgui::power :float))

(iffi:defifun ("__claw__ZN5ImGuiL21TreeAdvanceToLabelPosEv"
               %imgui::im-gui+tree-advance-to-label-pos)
              :void
              "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:2000:25")

(iffi:defitype %imgui::im-gui-nav-input
               :int
               "/home/borodust/devel/repo/claw-imgui/src/lib/imgui/imgui.h:158:13")

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%imgui::im-gui+log-text "%IMGUI")
  (export '%imgui::~im-gui-text-range "%IMGUI")
  (export '%imgui::mouse-cursor-scale "%IMGUI")
  (export '%imgui::source-id "%IMGUI")
  (export '%imgui::im-gui-storage-pair "%IMGUI")
  (export '%imgui::nav-active "%IMGUI")
  (export '%imgui::im-gui+new-frame "%IMGUI")
  (export '%imgui::im-gui+set-next-window-bg-alpha "%IMGUI")
  (export '%imgui::im-gui+begin-tab-bar "%IMGUI")
  (export '%imgui::oversample-h "%IMGUI")
  (export '%imgui::im-gui+get-style-color-vec4 "%IMGUI")
  (export '%imgui::key-shift "%IMGUI")
  (export '%imgui::build "%IMGUI")
  (export '%imgui::im-gui+end-tooltip "%IMGUI")
  (export '%imgui::frame-rounding "%IMGUI")
  (export '%imgui::%data "%IMGUI")
  (export '%imgui::operator+bool "%IMGUI")
  (export '%imgui::config-data-count "%IMGUI")
  (export '%imgui::im-gui+pop-font "%IMGUI")
  (export '%imgui::im-gui-nav-input- "%IMGUI")
  (export '%imgui::im-gui+get-style-color-name "%IMGUI")
  (export '%imgui::im-gui+slider-int "%IMGUI")
  (export '%imgui::im-gui+checkbox "%IMGUI")
  (export '%imgui::im-gui+set-column-width "%IMGUI")
  (export '%imgui::im-draw-idx "%IMGUI")
  (export '%imgui::im-gui+bullet-text "%IMGUI")
  (export '%imgui::im-gui+small-button "%IMGUI")
  (export '%imgui::container-atlas "%IMGUI")
  (export '%imgui::im-gui+text "%IMGUI")
  (export '%imgui::im-gui-dir "%IMGUI")
  (export '%imgui::im-gui+image-button "%IMGUI")
  (export '%imgui::add-input-character "%IMGUI")
  (export '%imgui::im-gui+push-style-var "%IMGUI")
  (export '%imgui::im-gui+is-any-item-focused "%IMGUI")
  (export '%imgui::mouse-down-duration-prev "%IMGUI")
  (export '%imgui::im-gui+end-list-box "%IMGUI")
  (export '%imgui::im-gui+begin-combo "%IMGUI")
  (export '%imgui::im-gui+set-window-collapsed "%IMGUI")
  (export '%imgui::mouse-wheel-h "%IMGUI")
  (export '%imgui::im-gui+checkbox-flags "%IMGUI")
  (export '%imgui::im-gui-slider-flags- "%IMGUI")
  (export '%imgui::im-gui+is-item-edited "%IMGUI")
  (export '%imgui::backend-flags "%IMGUI")
  (export '%imgui::im-gui+begin-tooltip "%IMGUI")
  (export '%imgui::im-wchar "%IMGUI")
  (export '%imgui::font-data "%IMGUI")
  (export '%imgui::im-gui+begin-popup-context-window "%IMGUI")
  (export '%imgui::nav-inputs-down-duration "%IMGUI")
  (export '%imgui::is-data-type "%IMGUI")
  (export '%imgui::im-gui+input-scalar-n "%IMGUI")
  (export '%imgui::font-builder-flags "%IMGUI")
  (export '%imgui::im-gui+separator "%IMGUI")
  (export '%imgui::%clip-rect-stack "%IMGUI")
  (export '%imgui::count-grep "%IMGUI")
  (export '%imgui::im-gui-table-column-flags "%IMGUI")
  (export '%imgui::im-gui-style-var "%IMGUI")
  (export '%imgui::im-gui+drag-int4 "%IMGUI")
  (export '%imgui::dirty-lookup-tables "%IMGUI")
  (export '%imgui::im-gui+reset-mouse-drag-delta "%IMGUI")
  (export '%imgui::im-gui+list-box "%IMGUI")
  (export '%imgui::im-vector<im-font-atlas-custom-rect> "%IMGUI")
  (export '%imgui::im-gui+end-menu "%IMGUI")
  (export '%imgui::im-gui-window-flags- "%IMGUI")
  (export '%imgui::im-gui-config-flags "%IMGUI")
  (export '%imgui::get-int-ref "%IMGUI")
  (export '%imgui::im-gui+calc-item-width "%IMGUI")
  (export '%imgui::im-gui+pop-clip-rect "%IMGUI")
  (export '%imgui::im-gui+end-popup "%IMGUI")
  (export '%imgui::input-queue-surrogate "%IMGUI")
  (export '%imgui::specs "%IMGUI")
  (export '%imgui::set-int "%IMGUI")
  (export '%imgui::im-gui+combo "%IMGUI")
  (export '%imgui::tex-id "%IMGUI")
  (export '%imgui::%cmd-buffer "%IMGUI")
  (export '%imgui::set-bool "%IMGUI")
  (export '%imgui::draw "%IMGUI")
  (export '%imgui::want-capture-mouse "%IMGUI")
  (export '%imgui::im-gui+is-item-clicked "%IMGUI")
  (export '%imgui::im-gui+get-mouse-cursor "%IMGUI")
  (export '%imgui::is-delivery "%IMGUI")
  (export '%imgui::im-gui+spacing "%IMGUI")
  (export '%imgui::font-size "%IMGUI")
  (export '%imgui::im-gui+is-any-mouse-down "%IMGUI")
  (export '%imgui::im-gui+begin-main-menu-bar "%IMGUI")
  (export '%imgui::im-gui+set-keyboard-focus-here "%IMGUI")
  (export '%imgui::im-gui+is-item-visible "%IMGUI")
  (export '%imgui::nav-visible "%IMGUI")
  (export '%imgui::want-capture-keyboard "%IMGUI")
  (export '%imgui::im-gui+end-drag-drop-source "%IMGUI")
  (export '%imgui::im-vector<im-font*> "%IMGUI")
  (export '%imgui::im-gui+render "%IMGUI")
  (export '%imgui::circle-segment-max-error "%IMGUI")
  (export '%imgui::im-gui+set-scroll-from-pos-x "%IMGUI")
  (export '%imgui::im-gui+table-get-column-name "%IMGUI")
  (export '%imgui::size "%IMGUI")
  (export '%imgui::w "%IMGUI")
  (export '%imgui::im-gui+progress-bar "%IMGUI")
  (export '%imgui::glyph-min-advance-x "%IMGUI")
  (export '%imgui::im-gui+is-window-collapsed "%IMGUI")
  (export '%imgui::glyph-advance-x "%IMGUI")
  (export '%imgui::user-callback-data "%IMGUI")
  (export '%imgui::grab-min-size "%IMGUI")
  (export '%imgui::mouse-drag-threshold "%IMGUI")
  (export '%imgui::mouse-clicked-time "%IMGUI")
  (export '%imgui::vtx-offset "%IMGUI")
  (export '%imgui::data-frame-count "%IMGUI")
  (export '%imgui::im-gui-popup-flags- "%IMGUI")
  (export '%imgui::backend-renderer-name "%IMGUI")
  (export '%imgui::im-gui-key-mod-flags "%IMGUI")
  (export '%imgui::mouse-drag-max-distance-sqr "%IMGUI")
  (export '%imgui::x1 "%IMGUI")
  (export '%imgui::im-gui+pop-allow-keyboard-focus "%IMGUI")
  (export '%imgui::im-gui+input-text "%IMGUI")
  (export '%imgui::im-gui-input-text-callback "%IMGUI")
  (export '%imgui::im-gui-tree-node-flags- "%IMGUI")
  (export '%imgui::im-gui-table-bg-target "%IMGUI")
  (export '%imgui::descent "%IMGUI")
  (export '%imgui::im-gui+value "%IMGUI")
  (export '%imgui::im-gui-table-column-sort-specs "%IMGUI")
  (export '%imgui::mouse-down-owned "%IMGUI")
  (export '%imgui::im-gui+is-mouse-hovering-rect "%IMGUI")
  (export '%imgui::im-gui-slider-flags "%IMGUI")
  (export '%imgui::im-gui+is-mouse-pos-valid "%IMGUI")
  (export '%imgui::im-gui+table-header "%IMGUI")
  (export '%imgui::im-gui-drag-drop-flags- "%IMGUI")
  (export '%imgui::column-index "%IMGUI")
  (export '%imgui::im-gui+v-slider-int "%IMGUI")
  (export '%imgui::im-draw-data "%IMGUI")
  (export '%imgui::+imgui-payload-type-color-3f+ "%IMGUI")
  (export '%imgui::advance-x "%IMGUI")
  (export '%imgui::im-gui+get-clipboard-text "%IMGUI")
  (export '%imgui::im-gui+set-window-focus "%IMGUI")
  (export '%imgui::buf "%IMGUI")
  (export '%imgui::im-u32 "%IMGUI")
  (export '%imgui::im-gui+push-style-color "%IMGUI")
  (export '%imgui::~im-gui-text-filter "%IMGUI")
  (export '%imgui::glyphs "%IMGUI")
  (export '%imgui::sort-direction "%IMGUI")
  (export '%imgui::im-draw-list "%IMGUI")
  (export '%imgui::get-center "%IMGUI")
  (export '%imgui::im-draw-callback "%IMGUI")
  (export '%imgui::config-drag-click-to-input-text "%IMGUI")
  (export '%imgui::im-gui+end-menu-bar "%IMGUI")
  (export '%imgui::im-gui+invisible-button "%IMGUI")
  (export '%imgui::im-gui-style-var- "%IMGUI")
  (export '%imgui::im-gui+collapsing-header "%IMGUI")
  (export '%imgui::im-gui+get-frame-count "%IMGUI")
  (export '%imgui::im-gui+set-scroll-here "%IMGUI")
  (export '%imgui::oversample-v "%IMGUI")
  (export '%imgui::im-gui+show-user-guide "%IMGUI")
  (export '%imgui::im-vector<im-vec4> "%IMGUI")
  (export '%imgui::mouse-released "%IMGUI")
  (export '%imgui::im-gui+drag-int "%IMGUI")
  (export '%imgui::size-pixels "%IMGUI")
  (export '%imgui::ini-filename "%IMGUI")
  (export '%imgui::tex-width "%IMGUI")
  (export '%imgui::im-gui+is-popup-open "%IMGUI")
  (export '%imgui::im-gui+set-window-pos "%IMGUI")
  (export '%imgui::im-draw-list-shared-data "%IMGUI")
  (export '%imgui::%channels "%IMGUI")
  (export '%imgui::clear-input-characters "%IMGUI")
  (export '%imgui::im-gui-col- "%IMGUI")
  (export '%imgui::im-vector<im-font-config> "%IMGUI")
  (export '%imgui::im-gui+begin-popup-context-void "%IMGUI")
  (export '%imgui::im-gui+get-scroll-x "%IMGUI")
  (export '%imgui::im-gui+get-window-width "%IMGUI")
  (export '%imgui::im-gui+slider-int2 "%IMGUI")
  (export '%imgui::alpha "%IMGUI")
  (export '%imgui::config-input-text-cursor-blink "%IMGUI")
  (export '%imgui::im-gui-table-row-flags "%IMGUI")
  (export '%imgui::im-gui+begin-group "%IMGUI")
  (export '%imgui::im-gui-color-edit-flags- "%IMGUI")
  (export '%imgui::im-gui+is-item-deactivated-after-edit "%IMGUI")
  (export '%imgui::im-gui+save-ini-settings-to-disk "%IMGUI")
  (export '%imgui::begin "%IMGUI")
  (export '%imgui::grab-rounding "%IMGUI")
  (export '%imgui::im-gui+get-version "%IMGUI")
  (export '%imgui::im-gui+get-mouse-pos "%IMGUI")
  (export '%imgui::user-callback "%IMGUI")
  (export '%imgui::framebuffer-scale "%IMGUI")
  (export '%imgui::im-gui+get-draw-data "%IMGUI")
  (export '%imgui::%vtx-current-idx "%IMGUI")
  (export '%imgui::im-gui+input-int2 "%IMGUI")
  (export '%imgui::child-border-size "%IMGUI")
  (export '%imgui::im-gui-list-clipper "%IMGUI")
  (export '%imgui::im-draw-vert "%IMGUI")
  (export '%imgui::im-gui+end-frame "%IMGUI")
  (export '%imgui::im-gui+slider-float "%IMGUI")
  (export '%imgui::im-gui+push-item-width "%IMGUI")
  (export '%imgui::im-gui-nav-input "%IMGUI")
  (export '%imgui::framerate "%IMGUI")
  (export '%imgui::add-input-character-utf16 "%IMGUI")
  (export '%imgui::im-gui+color-button "%IMGUI")
  (export '%imgui::im-gui-sort-direction- "%IMGUI")
  (export '%imgui::im-gui+mem-free "%IMGUI")
  (export '%imgui::key-map "%IMGUI")
  (export '%imgui::im-gui+table-get-column-index "%IMGUI")
  (export '%imgui::im-gui-hovered-flags "%IMGUI")
  (export '%imgui::im-gui+get-foreground-draw-list "%IMGUI")
  (export '%imgui::im-gui+get-window-content-region-width "%IMGUI")
  (export '%imgui::sort-order "%IMGUI")
  (export '%imgui::im-gui-table-flags "%IMGUI")
  (export '%imgui::display-end "%IMGUI")
  (export '%imgui::font-global-scale "%IMGUI")
  (export '%imgui::im-gui+color-picker3 "%IMGUI")
  (export '%imgui::v0 "%IMGUI")
  (export '%imgui::im-gui-viewport-flags "%IMGUI")
  (export '%imgui::im-gui+tree-advance-to-label-pos "%IMGUI")
  (export '%imgui::im-font-builder-io "%IMGUI")
  (export '%imgui::pen-pressure "%IMGUI")
  (export '%imgui::im-gui+set-window-font-scale "%IMGUI")
  (export '%imgui::im-gui+label-text "%IMGUI")
  (export '%imgui::config-windows-resize-from-edges "%IMGUI")
  (export '%imgui::im-gui+color-convert-u32to-float4 "%IMGUI")
  (export '%imgui::im-gui+v-slider-scalar "%IMGUI")
  (export '%imgui::im-gui+get-cursor-screen-pos "%IMGUI")
  (export '%imgui::im-gui+set-item-default-focus "%IMGUI")
  (export '%imgui::log-slider-deadzone "%IMGUI")
  (export '%imgui::im-gui+load-ini-settings-from-memory "%IMGUI")
  (export '%imgui::im-gui+open-popup "%IMGUI")
  (export '%imgui::im-gui+get-text-line-height "%IMGUI")
  (export '%imgui::height "%IMGUI")
  (export '%imgui::im-gui+drag-scalar "%IMGUI")
  (export '%imgui::set-all-int "%IMGUI")
  (export '%imgui::%idx-write-ptr "%IMGUI")
  (export '%imgui::im-gui-key "%IMGUI")
  (export '%imgui::im-gui+get-content-region-max "%IMGUI")
  (export '%imgui::mouse-double-click-time "%IMGUI")
  (export '%imgui::c-str "%IMGUI")
  (export '%imgui::col "%IMGUI")
  (export '%imgui::get-bool "%IMGUI")
  (export '%imgui::im-gui+show-demo-window "%IMGUI")
  (export '%imgui::im-gui+color-edit3 "%IMGUI")
  (export '%imgui::im-gui+is-key-down "%IMGUI")
  (export '%imgui::start-pos-y "%IMGUI")
  (export '%imgui::im-gui+bullet "%IMGUI")
  (export '%imgui::im-gui+slider-float2 "%IMGUI")
  (export '%imgui::y "%IMGUI")
  (export '%imgui::texture-id "%IMGUI")
  (export '%imgui::im-gui+table-next-column "%IMGUI")
  (export '%imgui::config-memory-compact-timer "%IMGUI")
  (export '%imgui::im-gui+get-columns-count "%IMGUI")
  (export '%imgui::im-gui+show-style-editor "%IMGUI")
  (export '%imgui::im-gui-text-filter+im-gui-text-range "%IMGUI")
  (export '%imgui::set-float "%IMGUI")
  (export '%imgui::preview "%IMGUI")
  (export '%imgui::im-gui+input-float3 "%IMGUI")
  (export '%imgui::im-gui+set-color-edit-options "%IMGUI")
  (export '%imgui::im-gui+get-tree-node-to-label-spacing "%IMGUI")
  (export '%imgui::im-gui+set-scroll-y "%IMGUI")
  (export '%imgui::index-advance-x "%IMGUI")
  (export '%imgui::im-gui-cond "%IMGUI")
  (export '%imgui::im-font-config "%IMGUI")
  (export '%imgui::im-gui-color-edit-flags "%IMGUI")
  (export '%imgui::im-gui+color-edit4 "%IMGUI")
  (export '%imgui::metrics-render-indices "%IMGUI")
  (export '%imgui::im-gui+slider-int4 "%IMGUI")
  (export '%imgui::elem-count "%IMGUI")
  (export '%imgui::im-gui+accept-drag-drop-payload "%IMGUI")
  (export '%imgui::im-gui+table-get-column-flags "%IMGUI")
  (export '%imgui::im-gui+log-buttons "%IMGUI")
  (export '%imgui::visible "%IMGUI")
  (export '%imgui::im-gui+set-next-window-collapsed "%IMGUI")
  (export '%imgui::im-gui-hovered-flags- "%IMGUI")
  (export '%imgui::metrics-total-surface "%IMGUI")
  (export '%imgui::tab-rounding "%IMGUI")
  (export '%imgui::im-gui+end-combo "%IMGUI")
  (export '%imgui::im-gui+log-to-clipboard "%IMGUI")
  (export '%imgui::im-u8 "%IMGUI")
  (export '%imgui::im-gui+slider-scalar "%IMGUI")
  (export '%imgui::im-gui-payload "%IMGUI")
  (export '%imgui::im-gui+selectable "%IMGUI")
  (export '%imgui::im-gui-table-flags- "%IMGUI")
  (export '%imgui::im-gui+slider-int3 "%IMGUI")
  (export '%imgui::im-gui+show-font-selector "%IMGUI")
  (export '%imgui::im-gui+set-current-context "%IMGUI")
  (export '%imgui::used4k-pages-map "%IMGUI")
  (export '%imgui::anti-aliased-lines "%IMGUI")
  (export '%imgui::im-gui+get-scroll-y "%IMGUI")
  (export '%imgui::im-gui-viewport "%IMGUI")
  (export '%imgui::name "%IMGUI")
  (export '%imgui::im-gui+get-window-content-region-max "%IMGUI")
  (export '%imgui::im-gui+set-next-window-pos "%IMGUI")
  (export '%imgui::v1 "%IMGUI")
  (export '%imgui::appendf "%IMGUI")
  (export '%imgui::key-repeat-rate "%IMGUI")
  (export '%imgui::tex-pixels-rgba32 "%IMGUI")
  (export '%imgui::im-gui+pop-button-repeat "%IMGUI")
  (export '%imgui::codepoint "%IMGUI")
  (export '%imgui::im-gui-drag-drop-flags "%IMGUI")
  (export '%imgui::display-size "%IMGUI")
  (export '%imgui::ellipsis-char "%IMGUI")
  (export '%imgui::total-idx-count "%IMGUI")
  (export '%imgui::display-pos "%IMGUI")
  (export '%imgui::metrics-active-allocations "%IMGUI")
  (export '%imgui::glyph-id "%IMGUI")
  (export '%imgui::im-gui+begin-menu-bar "%IMGUI")
  (export '%imgui::ref-frame "%IMGUI")
  (export '%imgui::im-gui+get-main-viewport "%IMGUI")
  (export '%imgui::y1 "%IMGUI")
  (export '%imgui::e "%IMGUI")
  (export '%imgui::popup-border-size "%IMGUI")
  (export '%imgui::backend-platform-user-data "%IMGUI")
  (export '%imgui::key-repeat-delay "%IMGUI")
  (export '%imgui::im-gui+plot-histogram "%IMGUI")
  (export '%imgui::%vtx-write-ptr "%IMGUI")
  (export '%imgui::get-clipboard-text-fn "%IMGUI")
  (export '%imgui::im-gui+set-next-item-width "%IMGUI")
  (export '%imgui::color-button-position "%IMGUI")
  (export '%imgui::im-gui+push-allow-keyboard-focus "%IMGUI")
  (export '%imgui::im-vector<im-draw-channel> "%IMGUI")
  (export '%imgui::im-gui+get-font-tex-uv-white-pixel "%IMGUI")
  (export '%imgui::im-gui+capture-mouse-from-app "%IMGUI")
  (export '%imgui::tex-uv-lines "%IMGUI")
  (export '%imgui::im-gui+show-metrics-window "%IMGUI")
  (export '%imgui::mouse-down-duration "%IMGUI")
  (export '%imgui::im-gui-once-upon-a-frame "%IMGUI")
  (export '%imgui::im-gui-data-type "%IMGUI")
  (export '%imgui::indent-spacing "%IMGUI")
  (export '%imgui::im-gui+is-item-deactivated "%IMGUI")
  (export '%imgui::cmd-lists "%IMGUI")
  (export '%imgui::im-gui+is-window-appearing "%IMGUI")
  (export '%imgui::im-gui-id "%IMGUI")
  (export '%imgui::event-char "%IMGUI")
  (export '%imgui::im-gui+get-window-height "%IMGUI")
  (export '%imgui::im-gui+is-any-item-active "%IMGUI")
  (export '%imgui::im-gui+input-float4 "%IMGUI")
  (export '%imgui::im-gui+save-ini-settings-to-memory "%IMGUI")
  (export '%imgui::im-gui-input-text-flags- "%IMGUI")
  (export '%imgui::popup-rounding "%IMGUI")
  (export '%imgui::~im-gui-input-text-callback-data "%IMGUI")
  (export '%imgui::im-draw-list-splitter "%IMGUI")
  (export '%imgui::im-gui+drag-int2 "%IMGUI")
  (export '%imgui::im-gui+next-column "%IMGUI")
  (export '%imgui::tex-uv-scale "%IMGUI")
  (export '%imgui::im-gui+indent "%IMGUI")
  (export '%imgui::im-font-atlas-custom-rect "%IMGUI")
  (export '%imgui::im-gui+set-next-window-size "%IMGUI")
  (export '%imgui::%current "%IMGUI")
  (export '%imgui::im-gui+style-colors-classic "%IMGUI")
  (export '%imgui::insert-chars "%IMGUI")
  (export '%imgui::im-gui+color-convert-hs-vto-rgb "%IMGUI")
  (export '%imgui::config-flags "%IMGUI")
  (export '%imgui::im-gui+tree-push "%IMGUI")
  (export '%imgui::im-gui-popup-flags "%IMGUI")
  (export '%imgui::fallback-advance-x "%IMGUI")
  (export '%imgui::flags "%IMGUI")
  (export '%imgui::tab-border-size "%IMGUI")
  (export '%imgui::im-gui+set-next-tree-node-open "%IMGUI")
  (export '%imgui::im-gui+get-id "%IMGUI")
  (export '%imgui::key-alt "%IMGUI")
  (export '%imgui::im-gui+columns "%IMGUI")
  (export '%imgui::pos "%IMGUI")
  (export '%imgui::im-gui+is-any-item-hovered "%IMGUI")
  (export '%imgui::want-set-mouse-pos "%IMGUI")
  (export '%imgui::tex-uv-white-pixel "%IMGUI")
  (export '%imgui::metrics-render-vertices "%IMGUI")
  (export '%imgui::columns-min-spacing "%IMGUI")
  (export '%imgui::im-gui+open-popup-on-item-click "%IMGUI")
  (export '%imgui::font "%IMGUI")
  (export '%imgui::im-gui+input-text-with-hint "%IMGUI")
  (export '%imgui::width "%IMGUI")
  (export '%imgui::is-active "%IMGUI")
  (export '%imgui::im-vector<im-vec2> "%IMGUI")
  (export '%imgui::im-gui-input-text-callback-data "%IMGUI")
  (export '%imgui::keys-down "%IMGUI")
  (export '%imgui::im-gui+log-to-tty "%IMGUI")
  (export '%imgui::window-rounding "%IMGUI")
  (export '%imgui::operator[] "%IMGUI")
  (export '%imgui::fonts "%IMGUI")
  (export '%imgui::im-gui-tab-bar-flags "%IMGUI")
  (export '%imgui::rasterizer-multiply "%IMGUI")
  (export '%imgui::im-gui-tab-item-flags- "%IMGUI")
  (export '%imgui::im-font-atlas "%IMGUI")
  (export '%imgui::im-gui+input-text-multiline "%IMGUI")
  (export '%imgui::im-gui-dir- "%IMGUI")
  (export '%imgui::im-gui+get-cursor-pos "%IMGUI")
  (export '%imgui::im-gui+set-column-offset "%IMGUI")
  (export '%imgui::pack-id-mouse-cursors "%IMGUI")
  (export '%imgui::im-gui+begin "%IMGUI")
  (export '%imgui::~im-gui-list-clipper "%IMGUI")
  (export '%imgui::im-gui+style-colors-light "%IMGUI")
  (export '%imgui::im-gui+open-popup-context-item "%IMGUI")
  (export '%imgui::~im-gui-table-column-sort-specs "%IMGUI")
  (export '%imgui::im-gui+get-scroll-max-x "%IMGUI")
  (export '%imgui::im-gui+color-picker4 "%IMGUI")
  (export '%imgui::get-float-ref "%IMGUI")
  (export '%imgui::add-input-characters-utf8 "%IMGUI")
  (export '%imgui::im-gui+pop-id "%IMGUI")
  (export '%imgui::split "%IMGUI")
  (export '%imgui::buf-dirty "%IMGUI")
  (export '%imgui::~im-gui-once-upon-a-frame "%IMGUI")
  (export '%imgui::user-data "%IMGUI")
  (export '%imgui::im-gui-sort-direction "%IMGUI")
  (export '%imgui::im-gui+begin-drag-drop-target "%IMGUI")
  (export '%imgui::scale "%IMGUI")
  (export '%imgui::im-gui+get-time "%IMGUI")
  (export '%imgui::scrollbar-rounding "%IMGUI")
  (export '%imgui::im-gui+set-cursor-pos-y "%IMGUI")
  (export '%imgui::cmd-buffer "%IMGUI")
  (export '%imgui::im-gui+debug-check-version-and-data-layout
          "%IMGUI")
  (export '%imgui::im-gui-combo-flags "%IMGUI")
  (export '%imgui::im-gui+tree-node "%IMGUI")
  (export '%imgui::im-gui+push-clip-rect "%IMGUI")
  (export '%imgui::im-draw-channel "%IMGUI")
  (export '%imgui::im-gui+tree-node-ex "%IMGUI")
  (export '%imgui::im-gui+load-ini-settings-from-disk "%IMGUI")
  (export '%imgui::custom-rects "%IMGUI")
  (export '%imgui::im-gui+slider-scalar-n "%IMGUI")
  (export '%imgui::%cmd-header "%IMGUI")
  (export '%imgui::im-gui+begin-menu "%IMGUI")
  (export '%imgui::window-menu-button-position "%IMGUI")
  (export '%imgui::im-gui+is-window-focused "%IMGUI")
  (export '%imgui::im-gui+get-item-rect-size "%IMGUI")
  (export '%imgui::im-gui+close-current-popup "%IMGUI")
  (export '%imgui::mouse-down "%IMGUI")
  (export '%imgui::im-gui+drag-float4 "%IMGUI")
  (export '%imgui::mouse-double-clicked "%IMGUI")
  (export '%imgui::im-gui+table-get-column-count "%IMGUI")
  (export '%imgui::im-gui+get-frame-height-with-spacing "%IMGUI")
  (export '%imgui::im-gui+set-next-window-focus "%IMGUI")
  (export '%imgui::im-gui+pop-style-color "%IMGUI")
  (export '%imgui::buf-size "%IMGUI")
  (export '%imgui::im-gui-window-flags "%IMGUI")
  (export '%imgui::im-gui+get-item-rect-min "%IMGUI")
  (export '%imgui::im-gui+input-int "%IMGUI")
  (export '%imgui::im-gui+get-window-content-region-min "%IMGUI")
  (export '%imgui::im-gui-cond- "%IMGUI")
  (export '%imgui::+imgui-has-table+ "%IMGUI")
  (export '%imgui::metrics-render-windows "%IMGUI")
  (export '%imgui::im-gui-data-type- "%IMGUI")
  (export '%imgui::im-gui-storage+im-gui-storage-pair "%IMGUI")
  (export '%imgui::im-gui+begin-popup "%IMGUI")
  (export '%imgui::event-flag "%IMGUI")
  (export '%imgui::font-allow-user-scaling "%IMGUI")
  (export '%imgui::reserve "%IMGUI")
  (export '%imgui::get-void-ptr-ref "%IMGUI")
  (export '%imgui::font-data-owned-by-atlas "%IMGUI")
  (export '%imgui::im-gui-mouse-button- "%IMGUI")
  (export '%imgui::index-lookup "%IMGUI")
  (export '%imgui::+imgui-impl-api+ "%IMGUI")
  (export '%imgui::im-gui+log-finish "%IMGUI")
  (export '%imgui::config-data "%IMGUI")
  (export '%imgui::glyph-offset "%IMGUI")
  (export '%imgui::im-gui-style "%IMGUI")
  (export '%imgui::scale-all-sizes "%IMGUI")
  (export '%imgui::im-gui-table-row-flags- "%IMGUI")
  (export '%imgui::im-gui+list-box-footer "%IMGUI")
  (export '%imgui::buf-text-len "%IMGUI")
  (export '%imgui::mouse-clicked "%IMGUI")
  (export '%imgui::im-gui+is-mouse-down "%IMGUI")
  (export '%imgui::im-gui-mouse-cursor "%IMGUI")
  (export '%imgui::im-gui+drag-int3 "%IMGUI")
  (export '%imgui::im-gui+is-item-activated "%IMGUI")
  (export '%imgui::frame-border-size "%IMGUI")
  (export '%imgui::key-mods "%IMGUI")
  (export '%imgui::im-gui+end-child-frame "%IMGUI")
  (export '%imgui::im-gui-text-range "%IMGUI")
  (export '%imgui::get-bool-ref "%IMGUI")
  (export '%imgui::+imgui-disable-demo-windows+ "%IMGUI")
  (export '%imgui::im-gui+create-context "%IMGUI")
  (export '%imgui::im-gui+is-item-active "%IMGUI")
  (export '%imgui::im-vec2 "%IMGUI")
  (export '%imgui::%splitter "%IMGUI")
  (export '%imgui::im-vector<im-font-glyph> "%IMGUI")
  (export '%imgui::specs-count "%IMGUI")
  (export '%imgui::event-key "%IMGUI")
  (export '%imgui::append "%IMGUI")
  (export '%imgui::im-gui-mouse-cursor- "%IMGUI")
  (export '%imgui::config-windows-move-from-title-bar-only "%IMGUI")
  (export '%imgui::delta-time "%IMGUI")
  (export '%imgui::has-selection "%IMGUI")
  (export '%imgui::valid "%IMGUI")
  (export '%imgui::anti-aliased-lines-use-tex "%IMGUI")
  (export '%imgui::im-draw-list-flags "%IMGUI")
  (export '%imgui::im-gui+get-window-size "%IMGUI")
  (export '%imgui::im-gui+pop-text-wrap-pos "%IMGUI")
  (export '%imgui::im-draw-cmd-header "%IMGUI")
  (export '%imgui::im-gui+style-colors-dark "%IMGUI")
  (export '%imgui::im-gui+list-box-header "%IMGUI")
  (export '%imgui::im-gui-input-text-flags "%IMGUI")
  (export '%imgui::im-gui+push-text-wrap-pos "%IMGUI")
  (export '%imgui::im-gui+end-drag-drop-target "%IMGUI")
  (export '%imgui::im-gui+set-next-item-open "%IMGUI")
  (export '%imgui::im-vector<void*> "%IMGUI")
  (export '%imgui::im-gui+is-item-focused "%IMGUI")
  (export '%imgui::want-save-ini-settings "%IMGUI")
  (export '%imgui::im-gui+begin-drag-drop-source "%IMGUI")
  (export '%imgui::im-gui+is-key-pressed "%IMGUI")
  (export '%imgui::set-clipboard-text-fn "%IMGUI")
  (export '%imgui::im-gui+is-window-hovered "%IMGUI")
  (export '%imgui::im-gui+begin-tab-item "%IMGUI")
  (export '%imgui::im-gui-text-buffer "%IMGUI")
  (export '%imgui::specs-dirty "%IMGUI")
  (export '%imgui::im-gui+get-drag-drop-payload "%IMGUI")
  (export '%imgui::locked "%IMGUI")
  (export '%imgui::im-vector<float> "%IMGUI")
  (export '%imgui::build-sort-by-key "%IMGUI")
  (export '%imgui::im-gui-text-filter "%IMGUI")
  (export '%imgui::im-gui+table-get-row-index "%IMGUI")
  (export '%imgui::im-gui-size-callback-data "%IMGUI")
  (export '%imgui::~im-gui-style "%IMGUI")
  (export '%imgui::im-gui+get-column-offset "%IMGUI")
  (export '%imgui::im-gui+input-float "%IMGUI")
  (export '%imgui::im-gui+menu-item "%IMGUI")
  (export '%imgui::im-gui+new-line "%IMGUI")
  (export '%imgui::end "%IMGUI")
  (export '%imgui::im-gui+align-text-to-frame-padding "%IMGUI")
  (export '%imgui::backend-renderer-user-data "%IMGUI")
  (export '%imgui::im-gui+input-int3 "%IMGUI")
  (export '%imgui::curve-tessellation-tol "%IMGUI")
  (export '%imgui::im-gui-config-flags- "%IMGUI")
  (export '%imgui::ime-window-handle "%IMGUI")
  (export '%imgui::b "%IMGUI")
  (export '%imgui::im-gui-backend-flags- "%IMGUI")
  (export '%imgui::get-work-center "%IMGUI")
  (export '%imgui::clear "%IMGUI")
  (export '%imgui::+imgui-version+ "%IMGUI")
  (export '%imgui::im-gui+begin-child "%IMGUI")
  (export '%imgui::im-gui+set-cursor-pos-x "%IMGUI")
  (export '%imgui::clip-rect "%IMGUI")
  (export '%imgui::im-gui-tree-node-flags "%IMGUI")
  (export '%imgui::keys-down-duration "%IMGUI")
  (export '%imgui::key-super "%IMGUI")
  (export '%imgui::im-gui+set-state-storage "%IMGUI")
  (export '%imgui::im-gui+get-font-size "%IMGUI")
  (export '%imgui::im-gui+destroy-context "%IMGUI")
  (export '%imgui::im-gui-focused-flags "%IMGUI")
  (export '%imgui::im-gui+set-tab-item-closed "%IMGUI")
  (export '%imgui::im-gui+get-style "%IMGUI")
  (export '%imgui::im-gui+tab-item-button "%IMGUI")
  (export '%imgui::im-gui+set-cursor-pos "%IMGUI")
  (export '%imgui::config-mac-osx-behaviors "%IMGUI")
  (export '%imgui::idx-buffer "%IMGUI")
  (export '%imgui::im-gui+drag-scalar-n "%IMGUI")
  (export '%imgui::dst-font "%IMGUI")
  (export '%imgui::im-gui+table-next-row "%IMGUI")
  (export '%imgui::im-gui+set-scroll-here-y "%IMGUI")
  (export '%imgui::im-gui-button-flags- "%IMGUI")
  (export '%imgui::im-gui+is-item-toggled-open "%IMGUI")
  (export '%imgui::ascent "%IMGUI")
  (export '%imgui::input-buf "%IMGUI")
  (export '%imgui::empty "%IMGUI")
  (export '%imgui::im-gui+drag-float3 "%IMGUI")
  (export '%imgui::im-gui+calc-list-clipping "%IMGUI")
  (export '%imgui::step "%IMGUI")
  (export '%imgui::select-all "%IMGUI")
  (export '%imgui::im-gui+end-main-menu-bar "%IMGUI")
  (export '%imgui::im-gui+set-clipboard-text "%IMGUI")
  (export '%imgui::im-gui+drag-float-range2 "%IMGUI")
  (export '%imgui::im-gui-storage "%IMGUI")
  (export '%imgui::im-gui-io "%IMGUI")
  (export '%imgui::im-gui-context "%IMGUI")
  (export '%imgui::im-gui+end-group "%IMGUI")
  (export '%imgui::~im-gui-text-buffer "%IMGUI")
  (export '%imgui::pixel-snap-h "%IMGUI")
  (export '%imgui::~im-gui-io "%IMGUI")
  (export '%imgui::im-gui+get-column-width "%IMGUI")
  (export '%imgui::clipboard-user-data "%IMGUI")
  (export '%imgui::im-gui+set-window-size "%IMGUI")
  (export '%imgui::selection-start "%IMGUI")
  (export '%imgui::im-gui+set-item-allow-overlap "%IMGUI")
  (export '%imgui::im-gui+is-rect-visible "%IMGUI")
  (export '%imgui::im-gui+set-next-window-size-constraints "%IMGUI")
  (export '%imgui::ini-saving-rate "%IMGUI")
  (export '%imgui::want-text-input "%IMGUI")
  (export '%imgui::im-gui+text-wrapped "%IMGUI")
  (export '%imgui::colored "%IMGUI")
  (export '%imgui::get-void-ptr "%IMGUI")
  (export '%imgui::im-gui+set-scroll-x "%IMGUI")
  (export '%imgui::im-gui+text-unformatted "%IMGUI")
  (export '%imgui::im-gui+get-font "%IMGUI")
  (export '%imgui::im-gui+get-mouse-drag-delta "%IMGUI")
  (export '%imgui::im-font "%IMGUI")
  (export '%imgui::im-gui+slider-angle "%IMGUI")
  (export '%imgui::display-start "%IMGUI")
  (export '%imgui::im-gui+get-state-storage "%IMGUI")
  (export '%imgui::u0 "%IMGUI")
  (export '%imgui::im-gui+get-content-region-avail "%IMGUI")
  (export '%imgui::im-gui+unindent "%IMGUI")
  (export '%imgui::cmd-lists-count "%IMGUI")
  (export '%imgui::nav-inputs-down-duration-prev "%IMGUI")
  (export '%imgui::nav-inputs "%IMGUI")
  (export '%imgui::items-height "%IMGUI")
  (export '%imgui::im-gui+begin-list-box "%IMGUI")
  (export '%imgui::im-gui+get-io "%IMGUI")
  (export '%imgui::im-gui-button-flags "%IMGUI")
  (export '%imgui::key "%IMGUI")
  (export '%imgui::im-gui+get-scroll-max-y "%IMGUI")
  (export '%imgui::im-gui-key-mod-flags- "%IMGUI")
  (export '%imgui::total-vtx-count "%IMGUI")
  (export '%imgui::im-gui+slider-float3 "%IMGUI")
  (export '%imgui::is-preview "%IMGUI")
  (export '%imgui::im-gui+capture-keyboard-from-app "%IMGUI")
  (export '%imgui::im-gui+color-convert-rg-bto-hsv "%IMGUI")
  (export '%imgui::x0 "%IMGUI")
  (export '%imgui::im-gui+is-key-released "%IMGUI")
  (export '%imgui::data "%IMGUI")
  (export '%imgui::im-gui-table-sort-specs "%IMGUI")
  (export '%imgui::im-gui+get-cursor-start-pos "%IMGUI")
  (export '%imgui::im-gui+table-get-sort-specs "%IMGUI")
  (export '%imgui::im-gui+text-disabled "%IMGUI")
  (export '%imgui::+imgui-version-num+ "%IMGUI")
  (export '%imgui::~im-gui-payload "%IMGUI")
  (export '%imgui::im-gui+is-mouse-double-clicked "%IMGUI")
  (export '%imgui::im-gui+get-window-draw-list "%IMGUI")
  (export '%imgui::im-gui+get-window-pos "%IMGUI")
  (export '%imgui::source-parent-id "%IMGUI")
  (export '%imgui::glyph-extra-spacing "%IMGUI")
  (export '%imgui::get-int "%IMGUI")
  (export '%imgui::im-gui-tab-bar-flags- "%IMGUI")
  (export '%imgui::im-gui+get-overlay-draw-list "%IMGUI")
  (export '%imgui::im-gui+image "%IMGUI")
  (export '%imgui::im-gui-combo-flags- "%IMGUI")
  (export '%imgui::glyph-max-advance-x "%IMGUI")
  (export '%imgui::font-builder-io "%IMGUI")
  (export '%imgui::im-gui+set-drag-drop-payload "%IMGUI")
  (export '%imgui::data-type "%IMGUI")
  (export '%imgui::im-gui+dummy "%IMGUI")
  (export '%imgui::im-font-atlas-flags "%IMGUI")
  (export '%imgui::fallback-glyph "%IMGUI")
  (export '%imgui::im-gui+get-column-index "%IMGUI")
  (export '%imgui::im-gui+text-colored "%IMGUI")
  (export '%imgui::%path "%IMGUI")
  (export '%imgui::im-gui+get-cursor-pos-y "%IMGUI")
  (export '%imgui::im-gui+input-float2 "%IMGUI")
  (export '%imgui::im-gui+input-int4 "%IMGUI")
  (export '%imgui::tex-pixels-alpha8 "%IMGUI")
  (export '%imgui::~im-gui-table-sort-specs "%IMGUI")
  (export '%imgui::im-gui+get-text-line-height-with-spacing "%IMGUI")
  (export '%imgui::x "%IMGUI")
  (export '%imgui::data-size "%IMGUI")
  (export '%imgui::mouse-down-was-double-click "%IMGUI")
  (export '%imgui::im-gui+drag-float "%IMGUI")
  (export '%imgui::%fringe-scale "%IMGUI")
  (export '%imgui::delete-chars "%IMGUI")
  (export '%imgui::im-gui+get-item-rect-max "%IMGUI")
  (export '%imgui::~im-gui-viewport "%IMGUI")
  (export '%imgui::im-gui+is-mouse-clicked "%IMGUI")
  (export '%imgui::tex-height "%IMGUI")
  (export '%imgui::im-gui+end-table "%IMGUI")
  (export '%imgui::im-gui+set-scroll-from-pos-y "%IMGUI")
  (export '%imgui::tex-desired-width "%IMGUI")
  (export '%imgui::im-gui+get-current-context "%IMGUI")
  (export '%imgui::im-gui+set-allocator-functions "%IMGUI")
  (export '%imgui::im-gui+get-draw-list-shared-data "%IMGUI")
  (export '%imgui::im-gui+color-convert-float4to-u32 "%IMGUI")
  (export '%imgui::im-gui+get-color-u32 "%IMGUI")
  (export '%imgui::im-gui+drag-float2 "%IMGUI")
  (export '%imgui::im-gui+push-font "%IMGUI")
  (export '%imgui::size-t "%IMGUI")
  (export '%imgui::im-gui+slider-float4 "%IMGUI")
  (export '%imgui::delivery "%IMGUI")
  (export '%imgui::z "%IMGUI")
  (export '%imgui::im-gui+table-set-bg-color "%IMGUI")
  (export '%imgui::pack-id-lines "%IMGUI")
  (export '%imgui::im-gui+get-key-pressed-amount "%IMGUI")
  (export '%imgui::fallback-char "%IMGUI")
  (export '%imgui::im-gui+mem-alloc "%IMGUI")
  (export '%imgui::%owner-name "%IMGUI")
  (export '%imgui::uv "%IMGUI")
  (export '%imgui::im-wchar16 "%IMGUI")
  (export '%imgui::get-float "%IMGUI")
  (export '%imgui::im-gui-table-column-flags- "%IMGUI")
  (export '%imgui::im-gui+push-button-repeat "%IMGUI")
  (export '%imgui::im-gui+set-tooltip "%IMGUI")
  (export '%imgui::im-gui+input-scalar "%IMGUI")
  (export '%imgui::im-gui+table-setup-scroll-freeze "%IMGUI")
  (export '%imgui::clear-selection "%IMGUI")
  (export '%imgui::tab-min-width-for-close-button "%IMGUI")
  (export '%imgui::capacity "%IMGUI")
  (export '%imgui::%idx-buffer "%IMGUI")
  (export '%imgui::im-gui+get-cursor-pos-x "%IMGUI")
  (export '%imgui::im-s16 "%IMGUI")
  (export '%imgui::anti-aliased-fill "%IMGUI")
  (export '%imgui::set-void-ptr "%IMGUI")
  (export '%imgui::im-gui+table-set-column-index "%IMGUI")
  (export '%imgui::font-no "%IMGUI")
  (export '%imgui::im-gui+get-content-region-avail-width "%IMGUI")
  (export '%imgui::~im-gui-storage-pair "%IMGUI")
  (export '%imgui::child-rounding "%IMGUI")
  (export '%imgui::im-gui+drag-int-range2 "%IMGUI")
  (export '%imgui::im-gui-tab-item-flags "%IMGUI")
  (export '%imgui::im-vector<unsigned+short> "%IMGUI")
  (export '%imgui::%count "%IMGUI")
  (export '%imgui::im-gui+is-mouse-dragging "%IMGUI")
  (export '%imgui::im-texture-id "%IMGUI")
  (export '%imgui::mouse-draw-cursor "%IMGUI")
  (export '%imgui::im-gui+end-child "%IMGUI")
  (export '%imgui::im-gui+begin-popup-context-item "%IMGUI")
  (export '%imgui::selection-end "%IMGUI")
  (export '%imgui::im-gui+table-setup-column "%IMGUI")
  (export '%imgui::im-gui+set-cursor-screen-pos "%IMGUI")
  (export '%imgui::ime-set-input-screen-pos-fn "%IMGUI")
  (export '%imgui::im-vec4 "%IMGUI")
  (export '%imgui::im-gui+get-mouse-pos-on-opening-current-popup
          "%IMGUI")
  (export '%imgui::im-gui-size-callback "%IMGUI")
  (export '%imgui::mouse-double-click-max-dist "%IMGUI")
  (export '%imgui::im-gui-viewport-flags- "%IMGUI")
  (export '%imgui::im-gui+end "%IMGUI")
  (export '%imgui::im-gui+calc-text-size "%IMGUI")
  (export '%imgui::step-no "%IMGUI")
  (export '%imgui::window-border-size "%IMGUI")
  (export '%imgui::im-gui-table-bg-target- "%IMGUI")
  (export '%imgui::merge-mode "%IMGUI")
  (export '%imgui::~im-gui-size-callback-data "%IMGUI")
  (export '%imgui::im-vector<im-draw-vert> "%IMGUI")
  (export '%imgui::im-gui+is-item-hovered "%IMGUI")
  (export '%imgui::im-gui+log-to-file "%IMGUI")
  (export '%imgui::im-gui+pop-style-var "%IMGUI")
  (export '%imgui::im-gui+tree-pop "%IMGUI")
  (export '%imgui::keys-down-duration-prev "%IMGUI")
  (export '%imgui::scrollbar-size "%IMGUI")
  (export '%imgui::im-gui-key- "%IMGUI")
  (export '%imgui::backend-language-user-data "%IMGUI")
  (export '%imgui::metrics-active-windows "%IMGUI")
  (export '%imgui::im-gui+show-about-window "%IMGUI")
  (export '%imgui::im-gui+plot-lines "%IMGUI")
  (export '%imgui::im-gui+get-frame-height "%IMGUI")
  (export '%imgui::im-gui+is-mouse-released "%IMGUI")
  (export '%imgui::im-gui-selectable-flags "%IMGUI")
  (export '%imgui::u1 "%IMGUI")
  (export '%imgui::pass-filter "%IMGUI")
  (export '%imgui::mouse-wheel "%IMGUI")
  (export '%imgui::+imgui-api+ "%IMGUI")
  (export '%imgui::im-gui+end-tab-item "%IMGUI")
  (export '%imgui::im-gui+input-double "%IMGUI")
  (export '%imgui::im-vector<im-gui-text-filter+im-gui-text-range>
          "%IMGUI")
  (export '%imgui::im-gui-col "%IMGUI")
  (export '%imgui::vtx-buffer "%IMGUI")
  (export '%imgui::y0 "%IMGUI")
  (export '%imgui::im-gui+set-next-window-content-size "%IMGUI")
  (export '%imgui::im-font-glyph "%IMGUI")
  (export '%imgui::items-frozen "%IMGUI")
  (export '%imgui::im-gui-selectable-flags- "%IMGUI")
  (export '%imgui::+imgui-payload-type-color-4f+ "%IMGUI")
  (export '%imgui::im-gui+button "%IMGUI")
  (export '%imgui::im-draw-cmd "%IMGUI")
  (export '%imgui::im-gui-focused-flags- "%IMGUI")
  (export '%imgui::log-filename "%IMGUI")
  (export '%imgui::im-gui+get-background-draw-list "%IMGUI")
  (export '%imgui::key-ctrl "%IMGUI")
  (export '%imgui::tex-glyph-padding "%IMGUI")
  (export '%imgui::%texture-id-stack "%IMGUI")
  (export '%imgui::im-gui+radio-button "%IMGUI")
  (export '%imgui::im-gui+get-key-index "%IMGUI")
  (export '%imgui::im-gui+push-id "%IMGUI")
  (export '%imgui::im-gui+arrow-button "%IMGUI")
  (export '%imgui::im-gui+show-style-selector "%IMGUI")
  (export '%imgui::~im-gui-storage "%IMGUI")
  (export '%imgui::im-gui+table-headers-row "%IMGUI")
  (export '%imgui::im-gui+same-line "%IMGUI")
  (export '%imgui::idx-offset "%IMGUI")
  (export '%imgui::im-gui+end-tab-bar "%IMGUI")
  (export '%imgui::column-user-id "%IMGUI")
  (export '%imgui::im-vector<im-draw-cmd> "%IMGUI")
  (export '%imgui::im-gui-mouse-button "%IMGUI")
  (export '%imgui::im-gui-backend-flags "%IMGUI")
  (export '%imgui::im-gui+begin-popup-modal "%IMGUI")
  (export '%imgui::im-gui+begin-child-frame "%IMGUI")
  (export '%imgui::im-gui+set-mouse-cursor "%IMGUI")
  (export '%imgui::cursor-pos "%IMGUI")
  (export '%imgui::im-gui+v-slider-float "%IMGUI")
  (export '%imgui::font-data-size "%IMGUI")
  (export '%imgui::im-gui+pop-item-width "%IMGUI")
  (export '%imgui::glyph-ranges "%IMGUI")
  (export '%imgui::im-gui+begin-table "%IMGUI")
  (export '%imgui::backend-platform-name "%IMGUI")
  (export '%imgui::items-count "%IMGUI")
  (export '%imgui::im-gui+set-scroll-here-x "%IMGUI"))

