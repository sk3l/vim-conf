# Set CMake project properties
project(testcpp)
cmake_minimum_required(VERSION 3.0)

# Set CPP compiler flags
set(CMAKE_CXX_FLAGS
${CMAKE_CXX_FLAGS}
"-Wall -pedantic -D_GLIBCXX_CONCEPT_CHECKS -std=gnu++14 -pthread")

# CMake package searches go here
#find_package (Threads)

# CMake variable defs go here
set(TGTNAME testcpp)
set(SRCFILES)
set(INCFILES)

set(
   SRCFILES
   ${PROJECT_SOURCE_DIR}/main.cpp
)

#set(LIBNAME ${PROJECT_NAME})
#set(LIBNAME_S "${PROJECT_NAME}_s")


# CMake include and lib directory search path additions
#include_directories(${CMAKE_SOURCE_DIR})
#link_directories(/usr/lib/x86_64-linux-gnu)

# Include all project subdirectories
#add_subdirectory(./foo)
#add_subdirectory(./bar)

# DEBUG messages printed to stdout
#message("SOURCES => ${SOURCES}")
#message("INCLUDES => ${INCLUDES}")

# Declare CMake project as a //shared object//
#add_library(${LIBNAME_S} STATIC ${SOURCES})
#add_library(${LIBNAME} SHARED ${SOURCES} ${INCLUDES})

# Declare CMake project as a //executable//
add_executable(${TGTNAME} ${SRCFILES})
#target_link_libraries(${NAME} sk3l3tal)

### install targets ###
#install(TARGETS ${LIBNAME_S} ${LIBNAME} DESTINATION dist)
#install(DIRECTORY "${CMAKE_SOURCE_DIR}/" DESTINATION dist/includes FILES_MATCHING PATTERN "*.h")

