#import <Foundation/Foundation.h>

@class Dummy;//@class 用在.h import用在.m
@interface Person : NSObject{
    //实例变量声明
    int identify;
    int age;
    Dummy *dummy;
}
//objc 2 自动生成get方法
@property(nonatomic) int age;

//方法声明
-(id)initWithAge:(int)_age Id:(int)_Id;// - 号是实例方法 
-(id)init;
//-(void)setAge:(int)_age;
-(int)getAge;
-(int)getId;
+(void)getClassInfo;

+(Person*)sharePerson;// + 号是类方法



@end





