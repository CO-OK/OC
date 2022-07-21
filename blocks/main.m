#import <Foundation/Foundation.h>// preprocessor command


int (^max_block)(int,int);
int (^max_block)(int,int)=^(int a,int b){
   if(a>b)return a;
   else return b;
};

typedef void (^dummy)(void);//类似于函数指针

void (^test)(void);
void (^test)(void)=^{
   NSLog(@"exec test\n");
};

@interface SampleClass:NSObject
- (void)sampleMethod;
- (int)max:(int)a : (int)b;
- (void)fun:(dummy)func;
@end



@implementation SampleClass


- (void)sampleMethod {
   NSLog(@"Hello, World! %ld \n",sizeof(long double));  
}

- (int)max:(int)a : (int)b{
   if(a>b)return a;
   return b;
}
- (void)fun:(dummy)func{
   NSLog(@"exec fun\n");
   func();
}

@end


int main() {

   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   
   SampleClass *sampleClass = [[SampleClass alloc]init];

   [sampleClass fun:test];
   
   [pool drain];
   return 0;
}