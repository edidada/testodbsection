cmake_minimum_required(VERSION 3.13)
project(testodbsection)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -DDATABASE_MYSQL")

add_executable(testodbsection driver.cxx person-odb.cxx)

target_link_libraries(testodbsection libodb-mysql.so)

target_link_libraries(testodbsection libodb.so)
