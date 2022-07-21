# import "User.h"
#import "Dummy.h"
@implementation User
-(id)initWithName:(NSString*)name email:(NSString*)email age:(int)age dummy:(Dummy*)dummy{
    if(self = [super init]){
        self.age=age;
        self.name=name ;
        self.email=email;
        self.dummy=dummy;
        [name release];
        [email release];
    }
    return self;
}
//编码
-(void)encodeWithCoder:(NSCoder*)aCoder{
    [aCoder encodeInt:_age forKey:@"age"];
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_email forKey:@"email"];
}

//解码
-(id)initWithCoder:(NSCoder*)aDecoder{
    if(self = [super init]){
        self.age = [aDecoder decodeIntForKey:@"age"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.email = [aDecoder decodeObjectForKey:@"email"];

    }
    return self;
}

-(NSString*)description{
    NSString* str = [NSString stringWithFormat:@"name:%@ email:%@",self.name,self.email];
    return str;
}

-(void)dealloc{
    [_name release];
    [_email release];
    [super dealloc];
}
@synthesize name=_name;
@synthesize email=_email;
@synthesize age=_age;
@synthesize dummy=_dummy;
@end