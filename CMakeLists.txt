cmake_minimum_required(VERSION 3.1)

set (CMAKE_CXX_STANDARD 11)

if (UNIX AND NOT APPLE)
  set (LINUX TRUE)
endif ()

project (slexe)

include_directories (
  /usr/local/include
  /usr/local/include/sparselizard
)

add_executable (${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} -L/usr/local/lib)
target_link_libraries(${PROJECT_NAME} -lsparselizard)
target_link_libraries(${PROJECT_NAME} -lopenblas)
target_link_libraries(${PROJECT_NAME} -lpetsc)
target_link_libraries(${PROJECT_NAME} -lslepc)
target_link_libraries(${PROJECT_NAME} -lpthread)
target_link_libraries(${PROJECT_NAME} -ldl)
