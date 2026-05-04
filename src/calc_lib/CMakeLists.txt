set(
        Srcs

        add/add.cpp
        sub/sub.cpp
)

add_library(
        calc_lib ${Srcs}
)

target_link_libraries(calc_lib PUBLIC common_hdr)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${Srcs})

set_target_properties(calc_lib PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/build
        ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/build
)