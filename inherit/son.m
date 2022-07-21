#import "son.h"

@implementation Son
-(void)printName{
    NSLog(@"%@",name);
}

-(void)eatShit:(int)num{//重载
    //[super eatShit:num];//还可以调用父类方法
    NSLog(@"son eat %d shit",num);
    
}



@end