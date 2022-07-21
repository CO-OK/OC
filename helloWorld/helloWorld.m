#import <Foundation/Foundation.h>// preprocessor command

/*
The next line @interface SampleClass:NSObject shows how to create an interface. 
It inherits NSObject, which is the base class of all objects.
*/
//typedef int(^dummy)(int,int);

@interface SampleClass:NSObject
- (void)sampleMethod;
//- (int)max:(int)a:(int*)b;
//- (int)invoke_dummy:(dummy)du;
@end

@implementation SampleClass

- (void)sampleMethod {
   NSLog(@"Hello, World! %d \n",sizeof(long double));
}

// - (int)invoke_dummy:(dummy)du{
//    return du(2,4);
// }
@end
extern int a;
int main() {
   /* my first program in Objective-C */
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   

   SampleClass *sampleClass = [[SampleClass alloc]init];
   [sampleClass sampleMethod];
   [pool drain];
   return 0;
}