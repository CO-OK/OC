#include<Foundation/Foundation.h>
#define  message_for(a, b)  \
   NSLog(@#a " and " #b ": We love you!\n")

#define tokenpaster(n) NSLog (@"token" #n " = %d", token##n)
struct Book{
    NSString *name;
    NSString *author;
    int book_id;
};

struct FieldExample{
    unsigned char f1:1;
    unsigned char f2:1;
    unsigned char f3:1;
    unsigned char f4:1;
    unsigned char f5:4;
    unsigned char f6:1;
}pack;

@interface TestClass:NSObject
-(void)printBookInfo:(struct Book*)book;
@end

@implementation TestClass
-(void)printBookInfo:(struct Book*)book{
    NSLog(@"name=%@\n",book->name);
    NSLog(@"autohr=%@\n",book->author);
    NSLog(@"id=%d\n",book->book_id);
}
@end

int main(){
    TestClass* test=[[TestClass alloc]init];
    struct Book book;
    book.name=@"666";
    book.author=@"mike";
    book.book_id=1;
    [test printBookInfo:&book];
    NSLog(@"%d\n",sizeof(struct FieldExample));
    NSLog(@"File :%s\n", __FILE__ );
    NSLog(@"Date :%s\n", __DATE__ );
    NSLog(@"Time :%s\n", __TIME__ );
    NSLog(@"Line :%d\n", __LINE__ );
    NSLog(@"ANSI :%d\n", __STDC__ );
    message_for(Carole, Debra);
    int token34 = 40;
    tokenpaster(34);
}