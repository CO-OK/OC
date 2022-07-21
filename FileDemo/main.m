#import <Foundation/Foundation.h>
#import "DateWriter.h"
int main(){
    /*
        FileHandle不能创建文件，只能对现有文件爱你进行读和写
    */
    // NSFileHandle* handle = [NSFileHandle fileHandleForWritingAtPath:@"/run/media/v/ASS/L/obj-c/FileDemo/test.txt"];
    // NSLog(@"End offset: %llu",[handle seekToEndOfFile]);

    // NSString* str=@"cnm";
    // NSData* data=[str dataUsingEncoding:NSUTF8StringEncoding];

    // //[handle seekToFileOffset:2];//这个方法并不会检查文件的边界，超过文件尾也会继续seek 

    // [handle writeData:data];
    // [handle closeFile];

    NSFileHandle* handle = [NSFileHandle fileHandleForWritingAtPath:@"/run/media/v/ASS/L/obj-c/FileDemo/test.txt"];
    DateWriter* writer=[[DateWriter alloc] initWithFileHandle:handle];
    [writer setTimer];
    [[NSRunLoop currentRunLoop] run];

    // NSMutableArray* a1=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil];
    // NSMutableArray* a2=[a1 copy];
    // NSLog(@"a1: %@",a1);
    // NSLog(@"a2: %@",a2);
    // [a2 addObject:@"4"];//不是mutableCopy的话是不能对副本进行更改的，mutableArray也不行
    // NSLog(@"a2: %@",a2);
}