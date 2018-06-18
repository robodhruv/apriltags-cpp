cmake_minimum_required(VERSION 2.6)

set (CMAKE_CXX_STANDARD 14)
set(CMAKE_BUILD_TYPE Release)

project(apriltags)

set(INSTALL_LIB_DIR lib CACHE PATH "Installation directory for libraries")
set(INSTALL_BIN_DIR bin CACHE PATH "Installation directory for executables")
set(INSTALL_INCLUDE_DIR include CACHE PATH "Installation directory for header files")

find_package(OpenCV)
include_directories(${OpenCV_INCLUDE_DIRS})

find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIR})

file(GLOB SOURCE_FILES "src/*.cc")
file(GLOB header_files "AprilTags/*.h")
include_directories(AprilTags . /opt/local/include)
add_library(${PROJECT_NAME} ${SOURCE_FILES})
add_subdirectory(example)

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS} v4l2) #-pg) #-fopenmp)