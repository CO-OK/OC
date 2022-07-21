#import "father.h"

@implementation Father
-(id)init{
    if(self = [super init]){
        name = @"this is father";
        money=10;
        dummy=6;
        //NSLog(@"%@",name);
    }
    return self;
}

-(void)eatShit:(int)num{
    NSLog(@"father %d shit",num);
}

@synthesize name;
@end