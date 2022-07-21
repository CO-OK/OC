#import <Foundation/Foundation.h>

@interface DateWriter:NSObject{
    @private
    NSDate* _date;
    NSFileHandle* _fileHandle;
    NSDateFormatter* _formatter;
}
-(id)initWithFileHandle:(NSFileHandle*)fileHandle;
-(void)setTimer;
-(void)writeDate:(NSTimer*)timer;
@end;