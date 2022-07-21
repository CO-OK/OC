#import "Person.h"

@interface Person ()

-(void)startFindApartment:(NSTimer*)timer;

@end

@implementation Person

-(id)initWithName:(NSString*)name withDelegate:(id <FindApartmentProtocol>)delegate{
    if(self=[super init]){
        self.name=name;
        self.delegate=delegate;//设置代理
    }
    return self;
}

-(void)wantToFindApartment{
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(startFindApartment:) userInfo:self.name repeats:YES];
}

-(void)startFindApartment:(NSTimer*)timer{
    //NSLog(@"name: %@",[timer userInfo]);
    if([self.delegate respondsToSelector:@selector(findApartment:)]){
        [self.delegate findApartment:timer];
    }
    else{
        NSLog(@"unknown method");
    }
    
}

@synthesize name=_name;
@synthesize delegate=_delegate;

@end