#import <Foundation/Foundation.h>

@interface Father:NSObject{
    @protected//默认就是protected
    NSString* name;
    @private
    int money;
    @public
    int dummy;
}

@property(nonatomic,readonly) NSString* name;

-(id)init;
-(void)eatShit:(int)num;
@end