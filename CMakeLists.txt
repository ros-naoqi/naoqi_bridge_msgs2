cmake_minimum_required(VERSION 3.5)
project(naoqi_bridge_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(action_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(trajectory_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)

set(MESSAGE_DEPS
  action_msgs
  sensor_msgs
  nav_msgs
  trajectory_msgs
  std_msgs
  geometry_msgs)

set(MSG_PREFIX "msg")
set(SRV_PREFIX "srv")
set(ACTION_PREFIX "action")

# Find msg files
FILE(GLOB MSG_FILES RELATIVE
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/${MSG_PREFIX}/*.msg)

# Find srv files
FILE(GLOB SRV_FILES RELATIVE
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/${SRV_PREFIX}/*.srv)

# Find action files
FILE(GLOB ACTION_FILES RELATIVE
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/${ACTION_PREFIX}/*.action)

# Generate the messages
rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
  ${SRV_FILES}
  ${ACTION_FILES}
  DEPENDENCIES ${MESSAGE_DEPS})

ament_export_dependencies(${MESSAGE_DEPS})
ament_package()