cmake_minimum_required(VERSION 2.6.0)

# pull in the pods macros. See cmake/pods.cmake for documentation
set(POD_NAME bot_cpp_utils)
include(cmake/pods.cmake)


# install all python package _pods directory
pods_install_python_packages(${CMAKE_CURRENT_SOURCE_DIR}/_pods)

# executable scripts:  script-name  python-module
pods_install_python_script(pods pods.py)
