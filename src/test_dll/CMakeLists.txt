add_executable(test_dll use_calc.cpp)

target_link_libraries(test_dll PUBLIC common_hdr calc_dll)

set_target_properties(test_dll PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
    RUNTIME_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build
)