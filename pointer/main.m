#include<Foundation/Foundation.h>
#define len 3
@interface TestClass:NSObject
@end

@implementation TestClass
@end


int main(){
    TestClass*test=[[TestClass alloc] init];
    int arr[len]={1,2,3};
    int *p=&arr[2];
    for(int i=len-1;i>=0;i--){
        NSLog(@"%d\n",*p);
        p--;
    }
}