cmake_minimum_required(VERSION 3.5)
project(tb_module)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


if( CMAKE_BUILD_TYPE STREQUAL "Debug" )
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1 -O0 -g -pthread")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99 -g -pthread")
    message("MINGW - Debug mode")
elseif( CMAKE_BUILD_TYPE STREQUAL "Release" ) # r
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O2 -pthread")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99 -O2 -pthread")
    message("MINGW - Release mode")
endif() # Debug

include_directories(${CMAKE_CURRENT_DIR}/include)

file(GLOB SRCS src/*.cpp)

message(STATUS " srcs: " ${SRCS})

foreach(src ${SRCS})
    string(REGEX REPLACE "(^.*/|.cpp$)" "" exe ${src})
    add_executable(${exe} ${src})
endforeach(src)



