cmake_minimum_required(VERSION 3.16)

project(cs323-proj4)

set(CMAKE_CXX_STANDARD 17 )

add_executable(splc main.cpp mips32.cpp tac.cpp)
add_executable(hanoi hanoi.cpp)