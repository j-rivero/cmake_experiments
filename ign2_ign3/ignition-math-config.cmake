#
# Generic ignition-math script
# 
# Input variables supported
# =========================
#
# USE_IGN_MATH_VERSION - [integer] 
#  - if set, does not look for versions installed in the system, use the one provided

if (IGN_MATH_VERSION_TO_USE)
  find_package("ignition-math${IGN_MATH_VERSION_TO_USE}" REQUIRED)
else()
  foreach (_version RANGE 10 1 -1)
    set(_ign_math_pkg "ignition-math${_version}")
    message(STATUS "Looking for ${_ign_math_pkg}")
    find_package("${_ign_math_pkg}" QUIET)
    if (IGNITION-MATH_CONFIG_INCLUDED)
      message(STATUS "  - Found!")
      break()
    endif()
  endforeach()
endif()

message(STATUS "${IGNITION-MATH_LIBRARIES}")
message(STATUS "${IGNITION-MATH_INCLUDE_DIRS}")
