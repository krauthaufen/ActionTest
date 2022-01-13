if(WIN32)
    set(OS windows)
    SET(ARCH AMD64)
elseif(APPLE)
    set(OS mac)
    if(NOT ${CMAKE_OSX_ARCHITECTURES} STREQUAL "")
        set(ARCH ${CMAKE_OSX_ARCHITECTURES})
    else()
        execute_process(COMMAND uname -m OUTPUT_VARIABLE ARCH)
    endif()

    string(REGEX REPLACE "\n$" "" ARCH "${ARCH}")
    string(REGEX REPLACE "x86_64" "AMD64" ARCH "${ARCH}")
    string(REGEX REPLACE "arm64" "ARM64" ARCH "${ARCH}")
elseif(UNIX AND NOT APPLE)
    set(OS linux)
    execute_process(COMMAND uname -m OUTPUT_VARIABLE ARCH)
    string(REGEX REPLACE "\n$" "" ARCH "${ARCH}")
    string(REGEX REPLACE "x86_64" "AMD64" ARCH "${ARCH}")
    string(REGEX REPLACE "arm64" "ARM64" ARCH "${ARCH}")
else()
    set(OS unknown)
    SET(ARCH AMD64)
endif(WIN32)
