cmake_minimum_required(VERSION 3.10) # Or higher, depending on features you need

project(Triangle_Render VERSION 1.0)

# Set common C++ standards
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON) # Good for shared libraries and some modern systems

# ----------------------------------------------------------------------------------
# 1. External Libraries
# ----------------------------------------------------------------------------------


# --- GLFW ---
# Method 1: Find GLFW installed on the system (recommended for learning projects if available)
#find_package(GLFW3 CONFIG REQUIRED)
# If GLFW3 is not found globally, you might need to provide a hint to CMake
#set(GLFW3_DIR "~/Downloads/glfw-3.4/build/src/") # Uncomment and set if needed
# find_package(GLFW3 CONFIG REQUIRED)

# Method 2: Build GLFW from source (if you prefer to manage it locally)
# This is more complex but ensures consistent versions.
# You'd typically add GLFW as a subdirectory and let its CMakeLists.txt handle the build.
 add_subdirectory(external/glfw) # Make sure extern/glfw contains GLFW's CMakeLists.txt
 set(GLFW_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external/glfw/include) # Adjust if needed
 link_libraries(glfw) # Link against the target GLFW creates

# Method 3: Use pre-built GLFW binaries (less portable, but simple for local setup)
# If you downloaded pre-built GLFW binaries:
# set(GLFW_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/extern/glfw/include)
# set(GLFW_LIBRARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/extern/glfw/lib) # Adjust for your platform (e.g., Windows .lib, Linux .so)
# link_directories(${GLFW_LIBRARY_DIR})
# add_library(glfw_prebuilt STATIC IMPORTED)
# set_target_properties(glfw_prebuilt PROPERTIES
#     IMPORTED_LOCATION "${GLFW_LIBRARY_DIR}/glfw3.lib" # Adjust for .so or .dylib
#     INTERFACE_INCLUDE_DIRECTORIES "${GLFW_INCLUDE_DIR}"
# )


# --- GLAD ---
# GLAD typically comes with its source files. You'll need to generate them from the GLAD website.
# Place the generated 'include' and 'src' folders inside extern/glad.
set(GLAD_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external/glad/include)
set(GLAD_SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/external/glad/src/glad.c) # Adjust for glad.cpp if you generated C++ headers

# ----------------------------------------------------------------------------------
# 2. Project Includes & Sources
# ----------------------------------------------------------------------------------

# Add your project's own include directories
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${GLAD_INCLUDE_DIR}
)

# Source files
file(GLOB_RECURSE PROJECT_SOURCES
    "src/*.cpp"
    "src/*.h"
)

# ----------------------------------------------------------------------------------
# 3. Create Executable
# ----------------------------------------------------------------------------------

add_executable(${PROJECT_NAME} ${PROJECT_SOURCES} ${GLAD_SOURCE})

# Link libraries
target_link_libraries(${PROJECT_NAME}
    #GLFW::GLFW # For Method 1 (find_package)
     glfw # For Method 2 (add_subdirectory)
    # glfw_prebuilt # For Method 3 (pre-built)
)

# Add any other required system libraries (OpenGL, X11, etc.)
# These vary by OS:
if(WIN32)
    target_link_libraries(${PROJECT_NAME} opengl32)
elseif(APPLE)
    target_link_libraries(${PROJECT_NAME} "-framework Cocoa" "-framework OpenGL" "-framework IOKit" "-framework CoreVideo")
elseif(UNIX)
    target_link_libraries(${PROJECT_NAME} OpenGL GL X11 pthread dl rt) # Common Linux dependencies
endif()

# ----------------------------------------------------------------------------------
# 4. Post-Build Steps (Optional, but useful)
# ----------------------------------------------------------------------------------

# Copy assets to the build directory (useful for runtime)
# Assuming your assets are in 'assets/' and your build is 'build/'
file(GLOB_RECURSE ASSET_FILES "${CMAKE_CURRENT_SOURCE_DIR}/assets/*")
foreach(ASSET_FILE ${ASSET_FILES})
    # Get the relative path to maintain directory structure
    file(RELATIVE_PATH REL_PATH "${CMAKE_CURRENT_SOURCE_DIR}/assets" "${ASSET_FILE}")
    add_custom_command(
        TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different "${ASSET_FILE}" "$<TARGET_FILE_DIR:${PROJECT_NAME}>/assets/${REL_PATH}"
        COMMENT "Copying asset: ${REL_PATH}"
    )
endforeach()
