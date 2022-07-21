#import <Foundation/Foundation.h>

@interface Boss:NSObject <NSCopying>{
    @private
    NSString* _name;
    NSString* _email;
}

@property(nonatomic,copy)NSString* name;
@property(nonatomic,copy)NSString* email;

+(id)shareBoss;//创建单例的类方法

@end