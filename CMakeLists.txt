# Makefile generated by CMakefileGenerator.cs (v1.2)
# *DO NOT EDIT*

cmake_minimum_required (VERSION 2.6)
project (Unreal)

# CMake Flags
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_USE_RESPONSE_FILE_FOR_OBJECTS 1 CACHE BOOL "" FORCE)
set(CMAKE_CXX_USE_RESPONSE_FILE_FOR_INCLUDES 1 CACHE BOOL "" FORCE)

# Standard Includes
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-includes.cmake")
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-definitions.cmake")
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-headers-ue.cmake")
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-headers-project.cmake")
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-sources-engine.cmake")
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-sources-project.cmake")
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-csharp-engine.cmake")
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-csharp-project.cmake")

# Optional Shader Include
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-shaders-engine.cmake")
set_source_files_properties(${ENGINE_SHADER_FILES} PROPERTIES HEADER_FILE_ONLY TRUE)
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-shaders-project.cmake")
set_source_files_properties(${PROJECT_SHADER_FILES} PROPERTIES HEADER_FILE_ONLY TRUE)
source_group("Shader Files" REGULAR_EXPRESSION .*.usf)

# Optional Config Include
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-config-engine.cmake")
set_source_files_properties(${ENGINE_CONFIG_FILES} PROPERTIES HEADER_FILE_ONLY TRUE)
include("/Users/carlosmedeiros/repo/cube/Project/Intermediate/ProjectFiles/cmake-config-project.cmake")
set_source_files_properties(${PROJECT_CONFIG_FILES} PROPERTIES HEADER_FILE_ONLY TRUE)
source_group("Config Files" REGULAR_EXPRESSION .*.ini)

# Add include directories for icp-client-cpp
include_directories("icp-client-cpp/lib-agent-c/inc")

add_custom_target(Project-Mac-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project Mac DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)
add_custom_target(Project-IOS-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project IOS DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(Project-TVOS-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project TVOS DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(Project-Mac-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project Mac Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)
add_custom_target(Project-IOS-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project IOS Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(Project-TVOS-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project TVOS Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(Project cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project Mac Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)

add_custom_target(Project-IOS cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project IOS Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(Project-TVOS cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" Project TVOS Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(ProjectEditor-Mac-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor Mac DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)
add_custom_target(ProjectEditor-IOS-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor IOS DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(ProjectEditor-TVOS-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor TVOS DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(ProjectEditor-Mac-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor Mac Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)
add_custom_target(ProjectEditor-IOS-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor IOS Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(ProjectEditor-TVOS-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor TVOS Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)

add_custom_target(ProjectEditor
        COMMAND cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor Mac Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw
        VERBATIM
        )
add_custom_target(ProjectEditor-IOS cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor IOS Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(ProjectEditor-TVOS cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" ProjectEditor TVOS Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(UnrealEditor-Mac-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealEditor Mac DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)
add_custom_target(UnrealEditor-Mac-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealEditor Mac Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)
add_custom_target(UnrealEditor cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealEditor Mac Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)

add_custom_target(UnrealGame-Mac-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame Mac DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)
add_custom_target(UnrealGame-IOS-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame IOS DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(UnrealGame-TVOS-DebugGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame TVOS DebugGame "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(UnrealGame-Mac-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame Mac Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)
add_custom_target(UnrealGame-IOS-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame IOS Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(UnrealGame-TVOS-Shipping cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame TVOS Shipping "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(UnrealGame cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame Mac Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress -buildscw VERBATIM)

add_custom_target(UnrealGame-IOS cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame IOS Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_custom_target(UnrealGame-TVOS cd "/Users/Shared/Epic Games/UE_5.2" && bash "/Users/Shared/Epic Games/UE_5.2/Engine/Build/BatchFiles/Mac/Build.sh" UnrealGame TVOS Development "-project=/Users/carlosmedeiros/repo/cube/Project/Project.uproject" -game -progress VERBATIM)
add_executable(FakeTarget ${ENGINE_HEADER_FILES} ${ENGINE_SOURCE_FILES} ${ENGINE_CSHARP_FILES} ${ENGINE_SHADER_FILES} ${ENGINE_CONFIG_FILES} ${PROJECT_HEADER_FILES} ${PROJECT_SOURCE_FILES} ${PROJECT_CSHARP_FILES} ${PROJECT_SHADER_FILES} ${PROJECT_CONFIG_FILES})
