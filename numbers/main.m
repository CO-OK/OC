#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;
@end

@implementation SampleClass

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
   float number1 = [a floatValue];
   float number2 = [b floatValue];
   float product = number1 * number2;
   NSNumber *result = [NSNumber numberWithFloat:product];
   return result;
}

@end

int main() {
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   SampleClass *sampleClass = [[SampleClass alloc]init];
   NSNumber *a = [NSNumber numberWithFloat:10.5];
   NSNumber *c = [[NSNumber alloc] initWithFloat:10.9];//这种方法需要手动管理内存
   NSNumber *b = [NSNumber numberWithChar:49];  
   char t = [b charValue];//还原
   NSLog(@"a=%@,b=%c\n",a,t); 
//    NSNumber *result = [sampleClass multiplyA:a withB:b];
//    NSString *resultString = [result stringValue];
//    NSLog(@"The product is %@",resultString);
//    NSLog(@"size=%lu\n",sizeof(NSString));

   [pool drain];
   return 0;
}