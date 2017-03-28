cmake_minimum_required(VERSION 3.6)
project(hw8)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        cmake-build-debug/cmake_install.cmake
        cmake-build-debug/CMakeCache.txt
        cmake-build-debug/hw8.cbp
        cmake-build-debug/Makefile
        data/bitsIn.txt
        data/faulkner
        data/faulkner.huf
        data/helloIn.txt
        data/lincoln
        data/lincoln.huf
        data/simple
        data/simple.huf
        data/simple.huf.ascii
        data/unique_tree
        data/unique_tree.huf
        data/whitman
        data/whitman.huf
        Bit_Vector.cxx
        Bit_Vector.h
        bitsExample.cxx
        CMakeLists.txt
        compress.cxx
        decompress.cxx
        iostreamExample.cxx
        makefile
        README)

set(f1 compress.cxx)
add_executable(hw8 ${SOURCE_FILES})
add_executable(first ${f1})
add_executable(second iostreamExample.cxx)