cmake_minimum_required (VERSION 2.8)

# This is the name of the project
PROJECT( assignment_3_task3 )

# This is for recursively searching for other directories.
# add_subdirectory (DirectoryName)

# sources to include
include_directories (.)
FIND_PACKAGE( OpenCV REQUIRED )
ADD_EXECUTABLE( assignment_3_task3  main.cpp)
TARGET_LINK_LIBRARIES( assignment_3_task3 ${OpenCV_LIBS} )