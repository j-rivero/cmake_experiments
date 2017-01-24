cmake_minimum_required(VERSION 3.0)

# sdformat will bring ignition-math3)
find_package(ignition-math)
find_package(SDFormat)

message(STATUS "SDFORMAT variables")
message(STATUS "${SDFormat_INCLUDE_DIRS}")
message(STATUS "${SDFormat_LIBRARIES}")
message(STATUS "${SDFormat_LIBRARY_DIRS}")
message(STATUS "------------------")

message(STATUS "Ign3 variables")
message(STATUS "${IGNITION-MATH_LIBRARIES}")
message(STATUS "${IGNITION-MATH_INCLUDE_DIRS}")
message(STATUS "------------------")
