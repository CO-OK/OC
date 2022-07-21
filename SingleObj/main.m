#import "Boss.h"

int main(){
    Boss* b1 = [Boss shareBoss];
    Boss* b2 = [Boss shareBoss];
    Boss* b3 = [[Boss alloc] init];
    Boss* b4 = [b1 copy];
    NSLog(@"b1=%p b2=%p b3=%p b4=%p",b1,b2,b3,b4);
}