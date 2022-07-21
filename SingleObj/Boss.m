#import "Boss.h"

static Boss* boss=nil;

@implementation Boss

+(id)shareBoss{
    @synchronized (self){//线程锁，防止多线程同时进入
        if(boss==nil){
            boss = [[[self class] alloc] init];
        }
    }
    return boss;
}

+(id)allocWithZone:(NSZone*)zone{//单例需要重写这个方法
    if(boss==nil){
        boss = [super allocWithZone:zone];
    }
    return boss;
}

-(id)copyWithZone:(NSZone*)zone{//单例需要重写这个方法
    return boss;
}

-(id)retain{//单例需要重写这个方法
    return boss;
}

-(oneway void)release{//单例需要重写这个方法
    //do nothing
}

-(id)autorelease{//单例需要重写这个方法
    return boss;
}

-(NSUInteger)retainCount{//单例需要重写这个方法
    return UINT_MAX;
}
@synthesize name=_name;
@synthesize email=_email;

@end