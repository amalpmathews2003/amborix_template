

file(GLOB SOURCES CONFIGURE_DEPENDS
    "${CMAKE_SOURCE_DIR}/*.c"
)

add_library(
    ${PROJECT_NAME} SHARED
    ${SOURCES}
)

include_directories(
    ${PROJECT_SOURCE_DIR}/include_priv
)

set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "")

install(TARGETS ${PROJECT_NAME} LIBRARY DESTINATION lib/amx/my-amx/modules/)

