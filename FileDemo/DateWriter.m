#import "DateWriter.h"

@implementation DateWriter
-(id)initWithFileHandle:(NSFileHandle*)fileHandle{
    if(self = [super init]){
        [_fileHandle release];
        _fileHandle=fileHandle;
        _formatter = [[NSDateFormatter alloc] init];
        [_formatter setDateFormat:@"yyyy/MM/dd HH:mm:ss\n"];
    }
    return self;

}
-(void)setTimer{
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(writeDate:) userInfo:nil repeats:YES];
}
-(void)writeDate:(NSTimer*)timer{
    //[_date release];
    _date = [NSDate date];
    [_fileHandle seekToEndOfFile];
    NSString* str = [_formatter stringFromDate:_date];
    NSLog(@"%@",str);
    NSData* data=[str dataUsingEncoding:NSUTF8StringEncoding];
    [_fileHandle writeData:data];

}
@end