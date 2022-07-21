#import "Person.h"

//延展
@interface Person ()
-(void)privateExample;

@end



@implementation Person

-(void)test{
    NSLog(@"Person: test function");
}

-(id)init{
    if(self=[super init]){
        _age=0;
        _name=[[NSString alloc] init];
    }
    //[self setAge:1];
    return self;
}

-(void)privateExample{
    NSLog(@"this is private function");
}

@synthesize dummy1,dummy2,dummy3,age=_age;

@end


//类目
@implementation Person (Creation)

-(id)initWithName:(NSString*) name{
    _name=[[NSString alloc] initWithString:name];
    return self;
}

-(id)initWithName:(NSString*) name AndWithAge:(int)age{
    [self initWithName:name];
    _age=age;
    return self;
}

@end


@implementation Person (Info)

-(void)printName{
    NSLog(@"name: %@",_name);
}

@end