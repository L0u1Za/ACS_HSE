set(BUILD_DIR "${CMAKE_BINARY_DIR}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/../bin")

set(BINARY_DIR "${CMAKE_BINARY_DIR}")

cmake_minimum_required(VERSION 3.0)
project(HomeWork1)

set(CMAKE_CXX_STANDARD 17)

# Source files list
set(SOURCE_FILES
        # Headers
        rnd.h
        constants.h
        flower.h
        shrub.h
        tree.h
        plant.h
        container.h

        # Sources
        flower.cpp
        shrub.cpp
        tree.cpp
        plant.cpp
        container.cpp
        main.cpp
)

add_executable(HomeWork1 ${SOURCE_FILES})
