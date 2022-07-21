#import <Foundation/Foundation.h>

@class B;

@interface A:NSObject{
    @private
    B* _b;
}
-(void)setB:(B*)b;
-(void)dealloc;
@end