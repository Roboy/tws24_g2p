# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bench_pkg: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bench_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv" NAME_WE)
add_custom_target(_bench_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bench_pkg" "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv" NAME_WE)
add_custom_target(_bench_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bench_pkg" "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv" NAME_WE)
add_custom_target(_bench_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bench_pkg" "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv" NAME_WE)
add_custom_target(_bench_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bench_pkg" "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Move.srv" NAME_WE)
add_custom_target(_bench_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bench_pkg" "/workspace/ros_ws/src/bench_pkg/srv/Move.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv" NAME_WE)
add_custom_target(_bench_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bench_pkg" "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv" NAME_WE)
add_custom_target(_bench_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bench_pkg" "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
)
_generate_srv_cpp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
)
_generate_srv_cpp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
)
_generate_srv_cpp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
)
_generate_srv_cpp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
)
_generate_srv_cpp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
)
_generate_srv_cpp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
)

### Generating Module File
_generate_module_cpp(bench_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bench_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bench_pkg_generate_messages bench_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_cpp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_cpp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_cpp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_cpp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Move.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_cpp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_cpp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_cpp _bench_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bench_pkg_gencpp)
add_dependencies(bench_pkg_gencpp bench_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bench_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
)
_generate_srv_eus(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
)
_generate_srv_eus(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
)
_generate_srv_eus(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
)
_generate_srv_eus(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
)
_generate_srv_eus(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
)
_generate_srv_eus(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
)

### Generating Module File
_generate_module_eus(bench_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bench_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bench_pkg_generate_messages bench_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_eus _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_eus _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_eus _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_eus _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Move.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_eus _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_eus _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_eus _bench_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bench_pkg_geneus)
add_dependencies(bench_pkg_geneus bench_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bench_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
)
_generate_srv_lisp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
)
_generate_srv_lisp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
)
_generate_srv_lisp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
)
_generate_srv_lisp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
)
_generate_srv_lisp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
)
_generate_srv_lisp(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
)

### Generating Module File
_generate_module_lisp(bench_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bench_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bench_pkg_generate_messages bench_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_lisp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_lisp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_lisp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_lisp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Move.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_lisp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_lisp _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_lisp _bench_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bench_pkg_genlisp)
add_dependencies(bench_pkg_genlisp bench_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bench_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
)
_generate_srv_nodejs(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
)
_generate_srv_nodejs(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
)
_generate_srv_nodejs(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
)
_generate_srv_nodejs(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
)
_generate_srv_nodejs(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
)
_generate_srv_nodejs(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
)

### Generating Module File
_generate_module_nodejs(bench_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bench_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bench_pkg_generate_messages bench_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_nodejs _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_nodejs _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_nodejs _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_nodejs _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Move.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_nodejs _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_nodejs _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_nodejs _bench_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bench_pkg_gennodejs)
add_dependencies(bench_pkg_gennodejs bench_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bench_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
)
_generate_srv_py(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
)
_generate_srv_py(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
)
_generate_srv_py(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
)
_generate_srv_py(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
)
_generate_srv_py(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
)
_generate_srv_py(bench_pkg
  "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
)

### Generating Module File
_generate_module_py(bench_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bench_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bench_pkg_generate_messages bench_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Activate.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_py _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Babble.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_py _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/DesiredKinematicsInput.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_py _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/GetCurrentKinematics.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_py _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Move.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_py _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/Refine.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_py _bench_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/bench_pkg/srv/SetPWM.srv" NAME_WE)
add_dependencies(bench_pkg_generate_messages_py _bench_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bench_pkg_genpy)
add_dependencies(bench_pkg_genpy bench_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bench_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bench_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bench_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bench_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bench_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bench_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bench_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bench_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bench_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bench_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bench_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
