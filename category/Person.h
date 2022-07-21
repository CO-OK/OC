#import <Foundation/Foundation.h>


@interface Person:NSObject
{
    //默认是protected
    int dummy3;
    @private
        NSString* _name;
        int       _age;
    @public
        int dummy1;
    @protected
        int dummy2;
}

@property(nonatomic) int dummy1;
@property(nonatomic) int dummy2;
@property(nonatomic) int dummy3;
@property(nonatomic) int age;

-(void)test;
-(id)init;
@end

//类目

@interface Person (Creation)//初始化方法的类目

//如果初始类中有相同的方法，则类目中的会被优先执行

-(id)initWithName:(NSString*) name;
-(id)initWithName:(NSString*) name AndWithAge:(int)age;

@end

@interface Person (Info)//获取信息

-(void)printName;

@end