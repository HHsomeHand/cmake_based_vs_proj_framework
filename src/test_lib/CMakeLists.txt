add_executable(test_lib use_calc.cpp)

target_link_libraries(test_lib PUBLIC common_hdr calc_lib)

SetTargetOutput(test_lib)