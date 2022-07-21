#import "Agent.h"

@implementation Agent

-(void)findApartment:(NSTimer*)timer{
    NSLog(@"agent for %@ find a apartment",[timer userInfo]);
}

@end