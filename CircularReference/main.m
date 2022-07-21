#import <Foundation/Foundation.h>
#import "A.h"
#import "B.h"
int main(){
    @autoreleasepool{
        A* myA=[[A alloc] init];
        B* myB=[[B alloc] init];
        
        
        
        [myA setB:myB];
        [myB setA:myA];
        [myB autorelease];
        [myA autorelease];
        
        //[myA release];
        NSLog(@"A count: %lu , B count: %lu",[myA retainCount],[myB retainCount]);
        //[myA release];

        //[myB release];
    }
    
}