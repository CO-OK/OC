
#import <Foundation/Foundation.h>


@interface TestClass:NSObject
-(double)getAverage:(int*)arr next:(int)size;
-(int*)generateIntArray;
@end

@implementation TestClass
-(double)getAverage:(int*)arr next:(int)size{
    int sum=0;
    for(int i=0;i<size;i++){
        sum+=arr[i];
    }
    NSLog(@"sum=%d\n",sum);
    return (double)sum/size;
}
-(int*)generateIntArray{
   static int  r[13];
   int i;

   /* set the seed */
   srand( (unsigned)time( NULL ) );
   for ( i = 0; i < 13; ++i) {
      r[i] = rand()%100;
      NSLog( @"r[%d] = %d\n", i, r[i]);
   }
   NSLog(@"addr1=%x\n",r);
   return r;
}
@end

int main(){
    
    TestClass *test = [[TestClass alloc]init];
    // int *a=[test generateIntArray];
    // NSLog(@"addr2=%x\n",a);
    // for(int i=0;i<13;i++){
    //     NSLog(@"%d\n",a[i]);
    // }
    double avg=[test getAverage:[test generateIntArray] next:13];
    NSLog(@"avg=%f\n",avg);
    
}