#import "Agent1.h"

@implementation Agent1

-(void)findApartment:(NSTimer*)timer{
    NSLog(@"agent1 for %@ find a apartment",[timer userInfo]);
}

@end