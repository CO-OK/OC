#import <Foundation/Foundation.h>
@class Dummy;
@interface User:NSObject <NSCoding>{
    @private
    NSString* _name;
    NSString* _email;
    Dummy* _dummy;
    int _age;
}

-(id)initWithName:(NSString*)name email:(NSString*)email age:(int)age dummy:(Dummy*)dummy;
@property(nonatomic,copy)NSString* name;
@property(nonatomic,copy)NSString* email;
@property(nonatomic,copy)Dummy* dummy;
@property(nonatomic,assign)int age;
@end