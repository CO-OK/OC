cmake_minimum_required(VERSION 3.12)

project(DelegateDemo)

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




add_library(DelegateDemoLib
    OBJECT
    main.m
)
add_library(Person2Lib
    OBJECT
    Person.m
)

add_library(AgentLib
    OBJECT
    Agent.m
)

add_library(Agent1Lib
    OBJECT
    Agent1.m
)
add_executable(DelegateDemo.exe)

target_link_libraries(DelegateDemo.exe PUBLIC DelegateDemoLib Person2Lib AgentLib Agent1Lib)