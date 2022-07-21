cmake_minimum_required(VERSION 3.12)
project(globalProject)

add_custom_target(run-helloWorld
    COMMAND helloWorld.exe
    WORKING_DIRECTORY helloWorld
)
add_custom_target(run-func
    COMMAND func.exe
    WORKING_DIRECTORY functions
)
add_custom_target(run-block
    COMMAND block.exe
    WORKING_DIRECTORY blocks
)
add_custom_target(run-number
    COMMAND number.exe
    WORKING_DIRECTORY numbers
)
add_custom_target(run-array
    COMMAND array.exe
    WORKING_DIRECTORY array
)
add_custom_target(run-pointer
    COMMAND pointer.exe
    WORKING_DIRECTORY pointer
)
add_custom_target(run-string
    COMMAND string.exe
    WORKING_DIRECTORY string
)
add_custom_target(run-struct
    COMMAND struct.exe
    WORKING_DIRECTORY struct
)
add_custom_target(run-class
    COMMAND class.exe
    WORKING_DIRECTORY class
)
add_custom_target(run-inherit
    COMMAND inherit.exe
    WORKING_DIRECTORY inherit
)
add_custom_target(run-NSArray
    COMMAND NSArray.exe
    WORKING_DIRECTORY NSArray
)
add_custom_target(run-NSDictionary
    COMMAND NSDictionary.exe
    WORKING_DIRECTORY NSDictionary
)
add_custom_target(run-NSSet
    COMMAND NSSet.exe
    WORKING_DIRECTORY NSSet
)
add_custom_target(run-category
    COMMAND category.exe
    WORKING_DIRECTORY category
)
add_custom_target(run-protocol
    COMMAND protocol.exe
    WORKING_DIRECTORY protocol
)
add_custom_target(run-DelegateDemo
    COMMAND DelegateDemo.exe
    WORKING_DIRECTORY DelegateDemo
)
add_custom_target(run-MemoryManage
    COMMAND MemoryManage.exe
    WORKING_DIRECTORY MemoryManage
)
add_custom_target(run-CircularReference
    COMMAND CircularReference.exe
    WORKING_DIRECTORY CircularReference
)
add_custom_target(run-FileDemo
    COMMAND FileDemo.exe
    WORKING_DIRECTORY FileDemo
)
add_custom_target(run-Archiver
    COMMAND Archiver.exe
    WORKING_DIRECTORY Archiver
)
add_custom_target(run-SingleObj
    COMMAND SingleObj.exe
    WORKING_DIRECTORY SingleObj
)
add_subdirectory(helloWorld)
add_subdirectory(functions)
add_subdirectory(blocks)
add_subdirectory(numbers)
add_subdirectory(array)
add_subdirectory(pointer)
add_subdirectory(string)
add_subdirectory(struct)
add_subdirectory(class)
add_subdirectory(inherit)
add_subdirectory(NSArray)
add_subdirectory(NSDictionary)
add_subdirectory(NSSet)
add_subdirectory(category)
add_subdirectory(protocol)
add_subdirectory(DelegateDemo)
add_subdirectory(MemoryManage)
add_subdirectory(CircularReference)
add_subdirectory(FileDemo)
add_subdirectory(Archiver)
add_subdirectory(SingleObj)