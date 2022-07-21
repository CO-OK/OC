#import <Foundation/Foundation.h>
#import "person.h"
int main(){
    Person* person=[[Person alloc] init];
    NSLog(@"%d",[person age]);//objc 2 自动生成get方法
    NSLog(@"%d",person.age);
    NSLog(@"%d",[person getId]);
    [Person getClassInfo];
    person.age=9;//必须设置property才能使用点语法 这句话等价于[person setAge:9]
    //[person setAge:6];//objc2 自动生成set 使用readonly则没有默认set
}