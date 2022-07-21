#import "father.h"
#import "son.h"
int main(){
    //Father* father=[[Father alloc] init];
    Son* son=[[Son alloc] init];
    Father* father=[[Father alloc] init];
    // [son printName];
    // [son release];
    [son eatShit:9];
    Father* f=son;
    [f eatShit:11];
    [father eatShit:10];
    NSLog(@"%d",father->dummy);//public可以访问
    // NSObject* t=father;
    // [t eatShit:8];
    //son 是不是father的子类或者father中的成员
    NSLog(@"kind of class?:%d",[son isKindOfClass:[Father class]]);
    //是否为父类中的成员
    NSLog(@"is member of?:%d",[son isMemberOfClass:[Father class]]);
    //是否是父类的子类
    NSLog(@"is sub of class?:%d\n",[Son isSubclassOfClass:[Father class]]);
    //是否可以响应所给的方法
    NSLog(@"is respond to eatShit?:%d",[son respondsToSelector:@selector(eatShit:)]);//函数名后面必须加冒号

    SEL eat;
    eat=@selector(printName);
    [son performSelector:eat];

    /*异常处理*/
    @try{
        [son test];
    }
    @catch(NSException* exception){
        NSLog(@"name:%@",[exception name]);
        NSLog(@"reason:%@",[exception reason]);
    }
    @finally{

    }
    
}