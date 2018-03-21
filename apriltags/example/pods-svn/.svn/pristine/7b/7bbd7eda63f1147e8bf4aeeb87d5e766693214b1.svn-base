cmake_minimum_required(VERSION 2.6.0)

# pull in the pods macros. See cmake/pods.cmake for documentation
set(POD_NAME ${pod_name})
include(cmake/pods.cmake)

# pull in the pods matlab macros
include(cmake/matlab_pods.cmake)
# create a script for adding the ${pod_name}/matlab folder to the matlab path
pods_install_matlab_path(${POD_NAME})
