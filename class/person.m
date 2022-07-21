#import "person.h"
#import "dummy.h"
@implementation Person
-(id)initWithAge:(int)_age Id:(int)_Id{
    if(self=[super init]){
        age=_age;
        identify=_Id;
    }
    return self;
}

-(id)init{
    if(self=[super init]){
        age=1;
        identify=1;
        dummy=[[Dummy alloc] init];
        [dummy printDummy];
    }
    //[self setAge:1];
    return self;
}

// -(void)setAge:(int)_age{
//     age=_age;
// }



-(int)getAge{
    return self.age;
}

-(int)getId{
    return identify;
}

+(void)getClassInfo{
    NSLog(@"class name: %@",[self class]);
    NSLog(@"father name: %@",[self superclass]);
}

//objc 2 自动生成get方法
@synthesize age;

@end