cmake_minimum_required(VERSION 3.5)
include("cmake/Aardvark.cmake")

project(Native)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

SET(CMAKE_BUILD_TYPE "MinSizeRel" CACHE INTERNAL "release mode")

add_library(Native SHARED test.cpp)

SET(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_SOURCE_DIR}/../../libs/Native/Native/") 
install(TARGETS Native DESTINATION ${OS}/${ARCH})
