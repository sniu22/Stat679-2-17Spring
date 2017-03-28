cmake_minimum_required(VERSION 3.6)
project(hw6)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES Stack.h Stack.template queens.cxx)
set(SOURCE_FILES2 Stack.h Stack.template main.cpp)
set(SOURCE_FILES3 testStack.cxx Stack.h Stack.template)
set(SOURCE_FILES4 queens.cxx Stack.h Stack.template)

add_executable(hw6 ${SOURCE_FILES})
add_executable(main ${SOURCE_FILES2})
add_executable(test2 ${SOURCE_FILES3})
add_executable(queen ${SOURCE_FILES4})
