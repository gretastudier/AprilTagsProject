# Install script for directory: /Users/gretastudier/Desktop/NASA Internship/apriltags

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/gretastudier/Desktop/NASA")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/gretastudier/Desktop/NASA Internship/apriltags/pod-build/lib/libapriltags.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/AprilTags" TYPE FILE FILES
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Edge.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/FloatImage.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/GLine2D.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/GLineSegment2D.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Gaussian.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/GrayModel.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Gridder.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Homography33.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/MathUtil.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Quad.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Segment.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Tag16h5.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Tag16h5_other.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Tag25h7.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Tag25h9.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Tag36h11.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Tag36h11_other.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/Tag36h9.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/TagDetection.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/TagDetector.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/TagFamily.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/UnionFindSimple.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/XYWeight.h"
    "/Users/gretastudier/Desktop/NASA Internship/apriltags/AprilTags/pch.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/gretastudier/Desktop/NASA Internship/apriltags/pod-build/lib/pkgconfig/apriltags.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/gretastudier/Desktop/NASA Internship/apriltags/pod-build/example/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/gretastudier/Desktop/NASA Internship/apriltags/pod-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
