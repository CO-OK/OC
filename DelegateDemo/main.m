#import <Foundation/Foundation.h>
#import "Person.h"
#import "Agent.h"
#import "Agent1.h"
int main(){
    Agent* agent = [[Agent alloc] init];
    Agent1* agent1 = [[Agent1 alloc] init];
    Person* jack = [[Person alloc] initWithName:@"jack" withDelegate:agent];
    Person* john = [[Person alloc] initWithName:@"john" withDelegate:agent1];
    [jack wantToFindApartment];
    [john wantToFindApartment];
    [[NSRunLoop currentRunLoop] run];
}