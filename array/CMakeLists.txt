cmake_minimum_required(VERSION 3.12)

project(array)

set(CMAKE_C_COMPILER "/usr/bin/clang")



SET(CFLAGS "-lgnustep-base \
        -MMD -MP -DGNU_RUNTIME=1 \
        -DGNUSTEP_BASE_LIBRARY=1 \
        -fno-strict-aliasing -fexceptions -fobjc-exceptions -D_NATIVE_OBJC_EXCEPTIONS -pthread \
        -fPIC -Wall -DGSWARN -DGSDIAGNOSE -Wno-import -g -O2 -I. \
        -I/usr/GNUstep/Local/Library/Headers \
        -I/usr/local/include \
        -shared-libgcc -fblocks -pthread -fexceptions -rdynamic \
        -L/usr/GNUstep/Local/Library/Libraries \
        -L/usr/local/lib \
        -lobjc -lm \
        -Qunused-arguments")


set(CMAKE_C_FLAGS " ${CFLAGS}")




add_library(arrayLib
    OBJECT
    main.m
)



add_executable(array.exe)

target_link_libraries(array.exe PUBLIC arrayLib)