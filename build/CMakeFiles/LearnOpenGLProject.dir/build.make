# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kelvin/Documents/OpenGl_Renderer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kelvin/Documents/OpenGl_Renderer/build

# Include any dependencies generated for this target.
include CMakeFiles/LearnOpenGLProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LearnOpenGLProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LearnOpenGLProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LearnOpenGLProject.dir/flags.make

CMakeFiles/LearnOpenGLProject.dir/codegen:
.PHONY : CMakeFiles/LearnOpenGLProject.dir/codegen

CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o: CMakeFiles/LearnOpenGLProject.dir/flags.make
CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o: /home/kelvin/Documents/OpenGl_Renderer/src/babulopengl.cpp
CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o: CMakeFiles/LearnOpenGLProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kelvin/Documents/OpenGl_Renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o -MF CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o.d -o CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o -c /home/kelvin/Documents/OpenGl_Renderer/src/babulopengl.cpp

CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kelvin/Documents/OpenGl_Renderer/src/babulopengl.cpp > CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.i

CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kelvin/Documents/OpenGl_Renderer/src/babulopengl.cpp -o CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.s

CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o: CMakeFiles/LearnOpenGLProject.dir/flags.make
CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o: /home/kelvin/Documents/OpenGl_Renderer/external/glad/src/glad.c
CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o: CMakeFiles/LearnOpenGLProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kelvin/Documents/OpenGl_Renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o -MF CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o.d -o CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o -c /home/kelvin/Documents/OpenGl_Renderer/external/glad/src/glad.c

CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kelvin/Documents/OpenGl_Renderer/external/glad/src/glad.c > CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.i

CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kelvin/Documents/OpenGl_Renderer/external/glad/src/glad.c -o CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.s

# Object files for target LearnOpenGLProject
LearnOpenGLProject_OBJECTS = \
"CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o" \
"CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o"

# External object files for target LearnOpenGLProject
LearnOpenGLProject_EXTERNAL_OBJECTS =

LearnOpenGLProject: CMakeFiles/LearnOpenGLProject.dir/src/babulopengl.cpp.o
LearnOpenGLProject: CMakeFiles/LearnOpenGLProject.dir/external/glad/src/glad.c.o
LearnOpenGLProject: CMakeFiles/LearnOpenGLProject.dir/build.make
LearnOpenGLProject: CMakeFiles/LearnOpenGLProject.dir/compiler_depend.ts
LearnOpenGLProject: external/glfw/src/libglfw3.a
LearnOpenGLProject: external/glfw/src/libglfw3.a
LearnOpenGLProject: /usr/lib/librt.a
LearnOpenGLProject: /usr/lib/libm.so
LearnOpenGLProject: CMakeFiles/LearnOpenGLProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kelvin/Documents/OpenGl_Renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable LearnOpenGLProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LearnOpenGLProject.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying asset: shader.frag"
	/usr/bin/cmake -E copy_if_different /home/kelvin/Documents/OpenGl_Renderer/assets/shader.frag /home/kelvin/Documents/OpenGl_Renderer/build/assets/shader.frag
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying asset: shader.vs"
	/usr/bin/cmake -E copy_if_different /home/kelvin/Documents/OpenGl_Renderer/assets/shader.vs /home/kelvin/Documents/OpenGl_Renderer/build/assets/shader.vs
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying asset: wall.jpg"
	/usr/bin/cmake -E copy_if_different /home/kelvin/Documents/OpenGl_Renderer/assets/wall.jpg /home/kelvin/Documents/OpenGl_Renderer/build/assets/wall.jpg

# Rule to build all files generated by this target.
CMakeFiles/LearnOpenGLProject.dir/build: LearnOpenGLProject
.PHONY : CMakeFiles/LearnOpenGLProject.dir/build

CMakeFiles/LearnOpenGLProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LearnOpenGLProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LearnOpenGLProject.dir/clean

CMakeFiles/LearnOpenGLProject.dir/depend:
	cd /home/kelvin/Documents/OpenGl_Renderer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kelvin/Documents/OpenGl_Renderer /home/kelvin/Documents/OpenGl_Renderer /home/kelvin/Documents/OpenGl_Renderer/build /home/kelvin/Documents/OpenGl_Renderer/build /home/kelvin/Documents/OpenGl_Renderer/build/CMakeFiles/LearnOpenGLProject.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/LearnOpenGLProject.dir/depend

