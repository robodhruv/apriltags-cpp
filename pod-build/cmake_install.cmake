# Install script for directory: /home/dhruvs/git/apriltags

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dhruvs/git/apriltags/build")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/dhruvs/git/apriltags/pod-build/lib/libapriltags.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/AprilTags" TYPE FILE FILES
    "/home/dhruvs/git/apriltags/AprilTags/FloatImage.h"
    "/home/dhruvs/git/apriltags/AprilTags/MathUtil.h"
    "/home/dhruvs/git/apriltags/AprilTags/TagDetector.h"
    "/home/dhruvs/git/apriltags/AprilTags/Quad.h"
    "/home/dhruvs/git/apriltags/AprilTags/pch.h"
    "/home/dhruvs/git/apriltags/AprilTags/Tag36h11.h"
    "/home/dhruvs/git/apriltags/AprilTags/XYWeight.h"
    "/home/dhruvs/git/apriltags/AprilTags/GrayModel.h"
    "/home/dhruvs/git/apriltags/AprilTags/TagFamily.h"
    "/home/dhruvs/git/apriltags/AprilTags/Homography33.h"
    "/home/dhruvs/git/apriltags/AprilTags/Tag25h9.h"
    "/home/dhruvs/git/apriltags/AprilTags/UnionFindSimple.h"
    "/home/dhruvs/git/apriltags/AprilTags/TagDetection.h"
    "/home/dhruvs/git/apriltags/AprilTags/Tag16h5.h"
    "/home/dhruvs/git/apriltags/AprilTags/Segment.h"
    "/home/dhruvs/git/apriltags/AprilTags/Tag16h5_other.h"
    "/home/dhruvs/git/apriltags/AprilTags/Gridder.h"
    "/home/dhruvs/git/apriltags/AprilTags/Tag36h9.h"
    "/home/dhruvs/git/apriltags/AprilTags/Tag25h7.h"
    "/home/dhruvs/git/apriltags/AprilTags/Gaussian.h"
    "/home/dhruvs/git/apriltags/AprilTags/GLineSegment2D.h"
    "/home/dhruvs/git/apriltags/AprilTags/Tag36h11_other.h"
    "/home/dhruvs/git/apriltags/AprilTags/Edge.h"
    "/home/dhruvs/git/apriltags/AprilTags/GLine2D.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dhruvs/git/apriltags/pod-build/lib/pkgconfig/apriltags.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dhruvs/git/apriltags/pod-build/example/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/dhruvs/git/apriltags/pod-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
