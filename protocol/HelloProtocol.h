#import <Foundation/Foundation.h>

/*
    协议声明了可以被其他的类实现方法。协议本身并不会去实现。
    协议不是类，只是一个其他对象可以实现的接口。
    一个类可以通过协议,用来遵循多个类中的方法,这样可以做到多继承的效果
*/

@protocol HelloProtocol <NSObject>

//必须实现的方法
@required
-(void)requiredMethod;

//可实现可不实现的方法
@optional
-(void)optionalMethod1;
-(void)optionalMethod2;

@end