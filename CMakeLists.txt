CMAKE_MINIMUM_REQUIRED(VERSION 3.5)

project(libexample VERSION 0.1.0 LANGUAGES C CXX )

set(PROJECT_SUMMARY "Example library using cmake")
set(PROJECT_DESCRIPTION "An library built using CMake")
set(PROJECT_LICENSE "MIT")
set(PROJECT_VENDOR "Blakemere Technologies Inc.")
set(PROJECT_CONTACT_NAME "Russell Davies")
set(PROJECT_CONTACT_EMAIL "russell@blakemere.ca")

option(LIBEXAMPLE_ENABLE_TESTING "Enables building unit tests." ON)
option(LIBEXAMPLE_ENABLE_PACKAGING "Enables the creation of distribution pacakges." ON)
option(INSTALL_STATIC "Install static library." ON)
option(INSTALL_SHARED "Install shared object library." ON)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_STANDARD_REQUIRES ON)
set(CMAKE_EXPORT_COMPILE_COMMAND ON)

include_directories(src include)

add_subdirectory(src)

if (LIBEXAMPLE_ENABLE_TESTING)
  add_subdirectory(tst)
endif()

if (LIBEXAMPLE_ENABLE_PACKAGING)
  add_subdirectory(packaging)
endif()
