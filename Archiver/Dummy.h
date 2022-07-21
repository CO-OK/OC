#import <Foundation/Foundation.h>

@interface Dummy:NSObject<NSCopying>{
    @private
    NSString* _desc;
    int _dum;
}

@property(nonatomic,copy)NSString* desc;
@property(nonatomic,assign)int dum;

@end;