cmake_minimum_required(VERSION 3.14)

project(plog LANGUAGES CXX)

# add_library(plog INTERFACE)
# target_include_directories(plog
#     INTERFACE
#     $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}>
#     $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/>
# )


file(GLOB_RECURSE PLOG_HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/*.h)
add_library(${PROJECT_NAME} SHARED ${PLOG_HEADERS})

set_target_properties(plog PROPERTIES LINKER_LANGUAGE CXX)

# target_include_directories(${PROJECT_NAME} 
#     PRIVATE 
#     ${PLOG_HEADERS}
# )

install(
    DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/plog
    DESTINATION ${PROJECT_BINARY_DIR}
    FILES_MATCHING # headers only
    PATTERN "*.h"
)