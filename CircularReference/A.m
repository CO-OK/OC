#import <Foundation/Foundation.h>
#import "A.h"
#import "B.h"

@implementation A
-(void)setB:(B*)b{
    if(_b!=b){
        [_b release];
        _b=b;
    }
}
-(void)dealloc{
    //[_b release];
    NSLog(@"A dealloc");
    //NSLog(@"B count: %lu",[_b retainCount]);
    [super dealloc];
}
@end