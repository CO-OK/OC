#import "CPU.h"
@implementation CPU

-(void)setCID:(int)CID{
    _cID=CID;
}
-(int)cID{
    return _cID;
}

-(void)dealloc{
    NSLog(@"cpu dealloc");
    [super dealloc];
}
@end