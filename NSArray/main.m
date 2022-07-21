#include<Foundation/Foundation.h>


int main(){
    NSArray*arr=[NSArray alloc];
    arr=[arr initWithObjects:@"one",nil];
    NSLog(@"%@",arr);

    NSArray*a1=[NSArray arrayWithObject:@"one"];
    NSLog(@"a1: %@",a1);

    //多元素初始化要以nil为结尾
    NSArray*a2=[NSArray arrayWithObjects:@"one",@"two",nil];
    NSLog(@"a2: %@",a2);

    NSArray*a3=[NSArray arrayWithArray:a2];
    NSLog(@"a3: %@",a3);

    //自己手动分配内存的方法
    NSArray*a4=[[NSArray alloc] initWithArray:a3];
    NSLog(@"a4: %@",a4);

    NSArray*a5=[[NSArray alloc] initWithObjects:@"a",@"b",@"c",@"d",@"e",nil];
    NSLog(@"a5: %@",a5);

    //获取元素个数
    NSLog(@"count: %lu",[a5 count]);

    //获取特定下标的元素
    NSLog(@"element at index 2: %@",[a5 objectAtIndex:2]);

    //追加并返回新的数组
    NSArray*a6=[a5 arrayByAddingObject:@"f"];
    NSString*s1=[[NSString alloc] initWithString:@"g"];
    a6=[a6 arrayByAddingObject:s1];
    NSLog(@"a6: %@",a6);

    //将数组变成字符串
    NSString*s2=[a6 componentsJoinedByString:@","];
    NSLog(@"s2: %@",s2);

    //判断数组中是否存在指定对象
    bool isContain=[a6 containsObject:@"c1"];
    NSLog(@"is contain: %d",isContain);

    //通过对象找到下标
    NSInteger t1=[a6 indexOfObject:@"d"];
    NSLog(@"t1: %ld",t1);

    //获取数组中最后一个元素
    NSLog(@"last element: %@",[a6 lastObject]);



    /*可变数组*/
    NSMutableArray* a7 = [NSMutableArray arrayWithCapacity:5];//NSMutableArray继承自NSArray

    //追加元素
    [a7 addObject:@"q"];
    [a7 addObjectsFromArray:a6];
    NSLog(@"a7: %@",a7);

    //指定下标插入
    [a7 insertObject:@"b" atIndex:0];
    NSLog(@"a7: %@",a7);

    //移除最后一个元素
    [a7 removeLastObject];
    NSLog(@"a7: %@",a7);

    //移除指定元素
    [a7 removeObject:@"b"];//全部移除，不管有几个
    NSLog(@"a7: %@",a7);

    //移除指定下标元素
    [a7 removeObjectAtIndex:0];
    NSLog(@"a7: %@",a7);

    //替换
    [a7 replaceObjectAtIndex:0 withObject:@"fuck"];
    NSLog(@"a7: %@",a7);

    //移除所有对象
    //[a7 removeAllObjects];
    //NSLog(@"a7: %@",a7);

    //空数组
    NSMutableArray* a8 = [NSMutableArray array];//这个方法继承自NSArray

    //遍历
    //性能较低
    for(int i=0;i<[a7 count];i++){
        
        NSLog(@"%@",[a7 objectAtIndex:i]);
    }
    //高性能
    for(NSString*s in a7){
        NSLog(@"%@",s);
    }
    //不确定数组类型时可以用id
    for(id s in a7){
        NSLog(@"%@",s);
    }
}