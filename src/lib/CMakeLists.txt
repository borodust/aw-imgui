cmake_minimum_required(VERSION 3.10)
project(imgui.clawed)

set(LIBRARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/imgui)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# setup rpath
set(CMAKE_SKIP_BUILD_RPATH FALSE)
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH "$\{ORIGIN\}")

if (MSVC)
    add_compile_options(/O2)
    if (NOT ANDROID_ABI)
      add_compile_options(/arch:AVX)
    endif()
else()
    add_compile_options(-O2)
    if (NOT ANDROID_ABI)
      set(TARGET_TRIPLE x86_64-pc-linux-gnu)
      add_compile_options(-mavx)
    else()
      set(TARGET_TRIPLE aarch64-linux-android)
      add_compile_options(-mfpu=neon)
    endif()
endif()

#
# MAIN
#
set(TARGET imgui.clawed)
set(ADAPTER "adapter.${TARGET_TRIPLE}.cxx")

add_library(${TARGET} SHARED ${ADAPTER}
  ${LIBRARY_DIR}/imgui.cpp
  ${LIBRARY_DIR}/imgui_draw.cpp
  ${LIBRARY_DIR}/imgui_widgets.cpp
  ${LIBRARY_DIR}/imgui_tables.cpp
  ${LIBRARY_DIR}/imgui_demo.cpp)

set_source_files_properties(${ADAPTER} PROPERTIES LANGUAGE CXX)

target_include_directories(${TARGET}
  PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../"
  PRIVATE "${LIBRARY_DIR}/")
