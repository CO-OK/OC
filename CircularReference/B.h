#import <Foundation/Foundation.h>

@class A;

@interface B:NSObject{
    @private
    A* _a;
}
-(void)setA:(A*)a;
-(void)dealloc;
@end