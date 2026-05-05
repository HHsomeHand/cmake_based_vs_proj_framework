add_executable(test_dll use_calc.cpp)

target_link_libraries(test_dll PUBLIC common_hdr calc_dll)

SetTargetOutput(test_dll)