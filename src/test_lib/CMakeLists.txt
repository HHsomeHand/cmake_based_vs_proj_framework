add_executable(test_lib use_calc.cpp)

target_link_libraries(test_lib PUBLIC common_hdr calc_lib)

set_target_properties(test_lib PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
    RUNTIME_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build
)