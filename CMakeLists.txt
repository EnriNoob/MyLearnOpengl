cmake_minimum_required(VERSION 3.10)
project(untitled)

set(CMAKE_CXX_STANDARD 17)

# GLFW (da pacman, con pkg-config)
find_package(PkgConfig REQUIRED)
pkg_search_module(GLFW REQUIRED glfw3)

# GLAD da path esterno (es: /home/tuo_utente/glad)
set(GLAD_ROOT "/home/enri/glad")  # <--- cambia col tuo username
add_library(glad ${GLAD_ROOT}/src/glad.c)

target_include_directories(glad PUBLIC ${GLAD_ROOT}/include)

# Eseguibile principale
add_executable(untitled main.cpp)

# Includi e linka
target_include_directories(untitled PRIVATE ${GLFW_INCLUDE_DIRS} ${GLAD_ROOT}/include)
target_link_libraries(untitled PRIVATE ${GLFW_LIBRARIES} glad)
