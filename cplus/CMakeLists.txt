cmake_minimum_required(VERSION 3.6)
project(cplus)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES postfix.cxx Stack_int.cxx Stack_int.h)

add_executable(clus ${SOURCE_FILES})

add_executable(sd sd.cpp)
add_executable(debug debug.cpp)
add_executable(infix infix.cxx)