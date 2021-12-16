set(BUILD_DIR "${CMAKE_BINARY_DIR}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/../bin")

set(BINARY_DIR "${CMAKE_BINARY_DIR}")

cmake_minimum_required(VERSION 3.0)
project(HomeWork5)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

# Source files list
set(SOURCE_FILES
        # Headers
        
        # Sources
        main.cpp
)

add_executable(HomeWork5 ${SOURCE_FILES})