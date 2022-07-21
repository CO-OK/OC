#import <Foundation/Foundation.h>

@interface CPU:NSObject{
    @private
    int _cID;

}

-(void)setCID:(int)CID;
-(int)cID;

@end