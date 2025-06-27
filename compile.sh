#!/bin/bash

# Define your project's executable name
EXECUTABLE_NAME="LearnOpenGLProject"

# Define the build directory
BUILD_DIR="build"

# Change to the build directory
if [ ! -d "$BUILD_DIR" ]; then
    echo "Build directory '$BUILD_DIR' does not exist. Please run 'cmake -B build' first."
    exit 1
fi
cd "$BUILD_DIR" || exit 1 # Exit if cd fails

echo "Building $EXECUTABLE_NAME..."
cmake --build .

# Check if the build was successful
if [ $? -ne 0 ]; then
    echo "Build failed."
    exit 1
fi

echo "Launching $EXECUTABLE_NAME..."

# Determine the path to the executable based on build type
if [ -f "Debug/$EXECUTABLE_NAME" ]; then
    ./Debug/$EXECUTABLE_NAME
elif [ -f "Release/$EXECUTABLE_NAME" ]; then
    ./Release/$EXECUTABLE_NAME
elif [ -f "$EXECUTABLE_NAME" ]; then
    ./$EXECUTABLE_NAME
else
    echo "Error: Executable $EXECUTABLE_NAME not found in $BUILD_DIR, Debug, or Release."
    exit 1
fi

# Go back to the original directory (optional)
# cd ..
