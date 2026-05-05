cmake_minimum_required(VERSION 3.10)

project(calc)

add_library(common_hdr INTERFACE
        src/__include/calc_dll.hpp
        src/__include/calc_lib.hpp
)

target_include_directories(common_hdr INTERFACE src/__include)

function(SetTargetOutput TargetName)
    set_target_properties(${TargetName} PROPERTIES
            RUNTIME_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
            RUNTIME_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build
            RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO ${PROJECT_SOURCE_DIR}/build
            RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL ${PROJECT_SOURCE_DIR}/build

            ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
            ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build
            ARCHIVE_OUTPUT_DIRECTORY_RELWITHDEBINFO ${PROJECT_SOURCE_DIR}/build
            ARCHIVE_OUTPUT_DIRECTORY_MINSIZEREL ${PROJECT_SOURCE_DIR}/build

            LIBRARY_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
            LIBRARY_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build
            LIBRARY_OUTPUT_DIRECTORY_RELWITHDEBINFO ${PROJECT_SOURCE_DIR}/build
            LIBRARY_OUTPUT_DIRECTORY_MINSIZEREL ${PROJECT_SOURCE_DIR}/build
    )
endfunction()


add_subdirectory(src/calc_dll)
add_subdirectory(src/test_dll)

add_subdirectory(src/calc_lib)
add_subdirectory(src/test_lib)