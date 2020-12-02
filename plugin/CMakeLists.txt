cmake_minimum_required(VERSION 3.17)
project(App_Websockets)

set(CMAKE_CXX_STANDARD 20)
#set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -lboost_system")
include_directories(BEFORE SYSTEM "/home/kamau/Libraries/boost_1_55_0")
add_definitions(-DBOOST_ERROR_CODE_HEADER_ONLY)
add_executable(App_Websockets main.cpp AppWebSockets.cpp AppWebSockets.h AppWebSocketsConnectionObject.cpp AppWebSocketsConnectionObject.h)