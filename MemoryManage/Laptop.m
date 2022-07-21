#import "Laptop.h"

@implementation Laptop
-(void)setCPU:(CPU*)cpu{
    [_cpu release];//如果_cpu为nil则这句话什么也不做
    _cpu=[cpu retain];
    // if(_cpu==nil)
    //     _cpu=[cpu retain];
    // else{
    //     [_cpu release];
    //     _cpu=cpu;
    // }
}
-(CPU*)cpu{
    return _cpu;
}
-(void)dealloc{
    NSLog(@"Laptop dealloc");
    [_cpu release];
    [super dealloc];
}
@end