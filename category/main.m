//这个文件夹中实现了 类目、延展

#import <Foundation/Foundation.h>
#import "Person.h"
int main(){
    Person*person=[[Person alloc] initWithName:@"日你妈"];
    [person printName];

    //这种是外部访问成员变量的方法，只对public有效
    person->dummy1=3;

    //下面三者是实现了get和set方法
    person.dummy1=2;
    person.dummy2=3;
    person.dummy3=4;
    
    [person privateExample]; //这个函数被通过延展定义为私有，但是编译器不会报错，只会有警告，匿名的，但是可以被外界调用
    
    //NSLog(@"%d",person->dummy2);
}