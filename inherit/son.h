#import "father.h"

@interface Son:Father{

}

-(void)printName;
-(void)eatShit:(int)num;//重载，方法名称、返回值和参数必须一模一样
@end