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

set_target_properties(calc_dll PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
        RUNTIME_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build

        ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
        ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build
)