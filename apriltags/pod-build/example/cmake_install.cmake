# Install script for directory: /Users/gretastudier/Desktop/NASA_Internship/apriltags/example

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/gretastudier/Desktop/NASA_Internship/apriltags/build")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/bin/apriltags_demo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltags_demo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltags_demo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltags_demo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltags_demo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltags_demo")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltags_demo")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/bin/apriltagscsv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltagscsv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltagscsv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltagscsv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltagscsv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltagscsv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/apriltagscsv")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/bin/imu")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imu" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imu")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/pod-build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imu")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imu")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/gretastudier/Desktop/NASA_Internship/apriltags/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imu")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imu")
    endif()
  endif()
endif()

