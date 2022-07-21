#import <Foundation/Foundation.h>
#import "B.h"
@implementation B
-(void)setA:(A*)a{
    if(_a!=a){
        [_a release];
        _a=[a retain];
    }
}
-(void)dealloc{
    NSLog(@"B dealloc");
    NSLog(@"A count: %lu",[_a retainCount]);
    [_a release];
    [super dealloc];
}
@end