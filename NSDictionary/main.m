#import <Foundation/Foundation.h>
int main(){
    NSNumber* n1=[[NSNumber alloc] initWithInt:1];
    NSNumber* n2=[[NSNumber alloc] initWithInt:2];
    //NSLog(@"%@",n1);

    //一种初始化方法
    NSDictionary* dict=[[NSDictionary alloc] initWithObjectsAndKeys:n1,@"key1",n2,@"key2",nil];//要以nil为结尾
    NSLog(@"dict: %@",dict);

    //获取字典数量
    NSInteger count=[dict count];

    //通过key获取对象
    //NSObject* obj=[dict objectForKey:@"key1"];
    NSObject* obj=[dict valueForKey:@"key1"];
    NSLog(@"obj: %@",obj);

    //获取所有键和所有值
    NSArray* values=[dict allValues];
    NSArray* keys=[dict allKeys];
    NSLog(@"values: %@",values);
    NSLog(@"keys: %@",keys);


    //可变字典
    NSMutableDictionary* mdict=[[NSMutableDictionary alloc] initWithObjectsAndKeys:n1,@"key1",n2,@"key2",nil];

    //追加键值对
    [mdict setValue:[NSNumber numberWithInt:3] forKey:@"key3"];
    NSLog(@"mdict: %@",mdict);

    //遍历字典
    for(id key in mdict){
        id obj = [mdict objectForKey:key];
        NSLog(@"key: %@ obj: %@",key,obj);
    }
    //或者使用数组方法
    keys=[mdict allKeys];
    for(int i=0;i<[mdict count];i++){
        id key=[keys objectAtIndex:i];
        NSLog(@"key: %@ obj: %@",key,[mdict objectForKey:key]);
    }
    //通过枚举
    NSEnumerator* enumerator = [mdict keyEnumerator];
    id key=[enumerator nextObject];
    while(key){
        id obj=[mdict objectForKey:key];
        NSLog(@"key: %@ obj: %@",key,obj);
        key=[enumerator nextObject];
    }
    //其他操作直接去看官网文档吧                                            
}