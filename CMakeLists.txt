cmake_minimum_required(VERSION 3.10)

project(calc)

add_library(common_hdr INTERFACE
        src/__include/calc_dll.hpp
        src/__include/calc_lib.hpp
)

target_include_directories(common_hdr INTERFACE src/__include)

add_subdirectory(src/calc_dll)
add_subdirectory(src/test_dll)

add_subdirectory(src/calc_lib)
add_subdirectory(src/test_lib)