#import <Foundation/Foundation.h>
#import "FindApartmentProtocol.h"

@interface Person: NSObject{
    @private
    NSString* _name;
    id <FindApartmentProtocol> _delegate;
}

@property (nonatomic,copy)NSString* name;
@property (nonatomic,assign)id <FindApartmentProtocol> delegate;

-(id)initWithName:(NSString*) name withDelegate:(id <FindApartmentProtocol>)delegate;
-(void)wantToFindApartment;
@end