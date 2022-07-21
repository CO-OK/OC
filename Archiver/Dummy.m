#import "Dummy.h"
@implementation Dummy

- (id)copyWithZone:(NSZone *)zone{
    Dummy *t = [Dummy allocWithZone:zone];
    t.desc = self.desc;
    t.dum = self.dum;
    return t;
}

@synthesize desc=_desc;
@synthesize dum=_dum;
@end