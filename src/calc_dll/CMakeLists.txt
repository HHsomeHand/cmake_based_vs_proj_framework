set(
        Srcs

        add/add.cpp
        sub/sub.cpp
)

add_library(
        calc_dll SHARED ${Srcs}
)

target_link_libraries(calc_dll PUBLIC common_hdr)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${Srcs})

target_compile_definitions(calc_dll
        PRIVATE
            CALC_DLL
)

SetTargetOutput(calc_dll)