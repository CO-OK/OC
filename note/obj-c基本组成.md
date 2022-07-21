# obj-c基本组成

A Objective-C program basically consists of the following parts :

    Preprocessor Commands
    Interface
    Implementation
    Method
    Variables
    Statements & Expressions
    Comments

一个程序实例如下：

```
#import <Foundation/Foundation.h>// preprocessor command

/*
The next line @interface SampleClass:NSObject shows how to create an interface. 
It inherits NSObject, which is the base class of all objects.
*/
@interface SampleClass:NSObject
- (void)sampleMethod;
@end

@implementation SampleClass

- (void)sampleMethod {
   NSLog(@"Hello, World! \n");
}

@end

int main() {
   /* my first program in Objective-C */
   SampleClass *sampleClass = [[SampleClass alloc]init];
   [sampleClass sampleMethod];
   return 0;
}
```

Let us look various parts of the above program −

    The first line of the program #import <Foundation/Foundation.h> is a preprocessor command, which tells a Objective-C compiler to include Foundation.h file before going to actual compilation.

    The next line @interface SampleClass:NSObject shows how to create an interface. It inherits NSObject, which is the base class of all objects.

    The next line - (void)sampleMethod; shows how to declare a method.

    The next line @end marks the end of an interface.

    The next line @implementation SampleClass shows how to implement the interface SampleClass.

    The next line - (void)sampleMethod{} shows the implementation of the sampleMethod.

    The next line @end marks the end of an implementation.

    The next line int main() is the main function where program execution begins.

    The next line /*...*/ will be ignored by the compiler and it has been put to add additional comments in the program. So such lines are called comments in the program.

    The next line NSLog(...) is another function available in Objective-C which causes the message "Hello, World!" to be displayed on the screen.

    The next line return 0; terminates main()function and returns the value 0.
