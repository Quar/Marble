cmake_minimum_required(VERSION 3.8)
project(M)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread" )

# The next two lines are required to get STL renderers (pretty printing) working in debugging in clion on mac
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -gdwarf-3")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -gdwarf-3")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")


## test add link_directories
#find_package(NTL REQUIRED)
#link_directories( ${NTL_LIBRARY} )
link_directories( "/usr/local/lib" )

add_subdirectory(Marble)
add_subdirectory(MarbleSamples)
add_subdirectory(HElib)
