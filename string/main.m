#include<Foundation/Foundation.h>

@interface TestClass:NSObject
-(void)print:(NSString*)str;
@end

@implementation TestClass
-(void)print:(NSString*)str{
    NSLog(@"%@\n",str);
}
@end



int main(){
    TestClass*test=[[TestClass alloc] init];
    NSString* s1=[[NSString alloc] init];//空字符串
    NSString* s2=[NSString string];//空字符串
    NSString* s3=[[NSString alloc] initWithString:@"fuck"]; //在常量区
    NSString* s4=[NSString stringWithString:@"fuuuuuuck"]; //在常量区

    NSLog(@"%@",s3);
    NSLog(@"%@",s4);
    NSString*str=@"I want to fuck you";//字符串常量 在常量区
    NSLog(@"%@",[str uppercaseString]);//大写
    NSLog(@"%@",[[str uppercaseString] lowercaseString]);//小写
    //[test print:str];
    NSLog(@"%@\n",[str capitalizedString]);//首字母大写
    NSLog(@"%c\n",[str characterAtIndex:2]);

    //转化为数组
    NSArray* arr=[str componentsSeparatedByString:@" "];
    NSLog(@"array:%@",arr);

    // 字符串转换
    NSString*num=@"3.1415926";
    NSLog(@"%f\n",[num doubleValue]);
    NSLog(@"%f\n",[num floatValue]);

    //子字符串
    NSLog(@"from:%@\n",[str substringFromIndex:5]);
    NSLog(@"to:%@",[str substringToIndex:2]);
    NSRange range;
    range.location=3;
    range.length=2;
    NSLog(@"range:%@",[str substringWithRange:range]);

    //是否有前后缀
    NSLog(@"%d\n",[str hasPrefix:(NSString*)(@"I want")]);
    NSLog(@"%d\n",[str hasSuffix:(NSString*)(@"fuck you")]);

    NSString *str1=[[NSString alloc] initWithFormat:@"%@ %@ %@",str,str,num];//按照格式初始化 创建在堆区
    NSLog(@"%@\n",str1);

    NSLog(@"%lu\n",[num integerValue]);

    NSLog(@"%d\n",[str isEqualToString:(NSString*)@"I want to fuck you "]);//字符串是否相等

    NSLog(@"length=%lu\n",[str1 length]);//长度

    NSLog(@"%@\n",[(NSString*)@"ABC" lowercaseString]);//小写

    //查找子串
    NSLog(@"%lu\n",[str1 rangeOfString:(NSString*)@"I want"].location);
    NSLog(@"%lu\n",[str1 rangeOfString:(NSString*)@"I want"].length);

    NSLog(@"%@\n",[str stringByAppendingFormat:@"%@",(NSString*)@"ffff"]);//拼接

    NSLog(@"%@\n",[str stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]]);//删除首尾空格
    

    //字符串比较大小
    NSString* s5 = [[NSString alloc] initWithFormat:@"abcd"];
    NSString* s6 = [[NSString alloc] initWithFormat:@"abc"];
    NSComparisonResult res = [s5 caseInsensitiveCompare:s6];
    NSLog(@"res:%ld",res);//小于是-1 等于是0 大于是1


    //可变字符串对象

    NSMutableString* s7 = [[NSMutableString alloc] initWithString:@"字符串"];//插入
    [s7 insertString:@"可变" atIndex:0];//原地更改
    NSLog(@"%@",s7);

    [s7 replaceCharactersInRange:NSMakeRange(0,2) withString:@"不可变"];//替换
    NSLog(@"%@",s7);

    [s7 deleteCharactersInRange:NSMakeRange(0,3) ];//删除
    NSLog(@"%@",s7);
}