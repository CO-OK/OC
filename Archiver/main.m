#import <Foundation/Foundation.h>
#import "User.h"
#import "Dummy.h"
int main(){
    // //归档
    // NSString* path = @"/run/media/v/ASS/L/obj-c/Code/Archiver/array.archive";
    // //对数组进行归档
    // NSArray* array = @[@123,@456,@"666",@"999"];
    // if([NSKeyedArchiver archiveRootObject:array toFile:path]){
    //     NSLog(@"Archive success");
    // }

    // //解归档
    // //NSArray* unarry = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    // NSLog(@"array: %@",unarry);

    // //序列化归档
    // NSString* path1 = @"/run/media/v/ASS/L/obj-c/Code/Archiver/test.archive";
    // NSMutableData* data = [NSMutableData data];
    // NSKeyedArchiver* archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    // // 对每一个对象进行归档
    // [archiver encodeFloat:50 forKey:@"weight"];
    // [archiver encodeObject:@"jack" forKey:@"name"];
    // [archiver finishEncoding];
    // [archiver release];
    // [data writeToFile:path1 atomically:YES];

    // //解归档 反序列化
    // NSData* content = [NSData dataWithContentsOfFile:path1];
    // NSKeyedUnarchiver* unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:content];
    // float weight = [unarchiver decodeFloatForKey:@"weight"];
    // NSString*name = [unarchiver decodeObjectForKey:@"name"];
    // NSLog(@"float:%f name:%@",weight,name);


    //自定义对象进行归档
    NSString*name=[[NSString alloc] initWithString:@"name"];
    NSString*email=[[NSString alloc] initWithString:@"1260999370@qq.com"];

    Dummy*dummy=[[Dummy alloc] init];
    NSLog(@"addr1=%p",dummy);

    User* user = [[User alloc] initWithName:name email:email age:18 dummy:dummy];
    NSLog(@"addr2=%p",user.dummy);
    //[name release];
    //[email release];

    NSLog(@"%ld , %ld",[name retainCount],[email retainCount]);
    if([NSKeyedArchiver archiveRootObject:user toFile:@"/run/media/v/ASS/L/obj-c/Code/Archiver/user.archive"]){
        NSLog(@"Archive success");
    }

    User* u= [NSKeyedUnarchiver unarchiveObjectWithFile:@"/run/media/v/ASS/L/obj-c/Code/Archiver/user.archive"];

    NSLog(@"%@",u);
}