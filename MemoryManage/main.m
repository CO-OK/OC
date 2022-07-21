#import "CPU.h"
#import "Laptop.h"
int main(){
    // CPU* myCPU=[[CPU alloc] init];
    // [myCPU setCID:1];
    // Laptop* laptop=[[Laptop alloc] init];
    // [laptop setCPU:myCPU];
    // [myCPU release];
    // [[laptop cpu] cID];
    // CPU* intel=[[CPU alloc] init];
    // [intel setCID:2];
    // [laptop setCPU:intel];
    // [intel release];
    // [laptop release];


    NSAutoreleasePool* pool=[[NSAutoreleasePool alloc] init];
    /*code*/
        CPU* intel=[[CPU alloc] init];
        @autoreleasepool{
            
            [intel autorelease];//必须加这句话才能将对象加入自动释放池
            [intel retain];
        }
        [intel autorelease];
    [pool release];

    
    
}