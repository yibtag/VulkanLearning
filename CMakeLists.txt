cmake_minimum_required(VERSION 3.10)

include(FetchContent)

project(VulkanLearning VERSION 1.0)

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED True)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(SOURCE_DIR "${CMAKE_SOURCE_DIR}/src")

file(GLOB_RECURSE SOURCES "${SOURCE_DIR}/*.cpp" "${SOURCE_DIR}/*.h")

add_executable(VulkanLearning ${SOURCES})

FetchContent_Declare(glfw GIT_REPOSITORY https://github.com/glfw/glfw.git)
FetchContent_MakeAvailable(glfw)
if (TARGET glfw)
    target_link_libraries(VulkanLearning glfw)
endif()

FetchContent_Declare(glm GIT_REPOSITORY https://github.com/icaven/glm.git)
FetchContent_MakeAvailable(glm)
if (TARGET glm)
    target_link_libraries(VulkanLearning glm)
endif()

find_package(Vulkan REQUIRED)
if (Vulkan_FOUND)
	target_link_libraries(VulkanLearning Vulkan::Vulkan)
endif()