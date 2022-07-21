#import <Foundation/Foundation.h>

@class CPU;

@interface Laptop:NSObject{
    @private
    CPU* _cpu;
}

-(void)setCPU:(CPU*)cpu;
-(CPU*)cpu;

@end