cmake_minimum_required(VERSION 3.6)
project(ctest)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp)
add_executable(ctest ${SOURCE_FILES})