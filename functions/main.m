#import <Foundation/Foundation.h>// preprocessor command


@interface SampleClass:NSObject
- (void)sampleMethod;
- (int)max:(int)a next:(int)b;
- (void)swap:(int*)a :(int*)b;
@end

@implementation SampleClass

void (^simpleBlock)(void) = ^{
   NSLog(@"This is a block");
};
- (void)sampleMethod {
   NSLog(@"Hello, World! %d \n",sizeof(long double));  
}

- (int)max:(int)a next:(int)b{
    if(a>b)return a;
    return b;
}

- (void)swap:(int*)a :(int*)b{
    int t=*a;
    *a=*b;
    *b=t;
}

@end


int main() {

   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   

   SampleClass *sampleClass = [[SampleClass alloc]init];
   
   int a=[sampleClass max:10 next:20];
   NSLog(@"max=%d\n",a);
   int c=10;
   int d=9;
   NSLog(@"begin swap c=%d,d=%d\n",c,d);
   [sampleClass swap:&c:&d];
   NSLog(@"afterswap c=%d,d=%d\n",c,d);
   
   [pool drain];
   return 0;
}