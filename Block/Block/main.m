//  main.m
//  Block

#import <Foundation/Foundation.h>



void functionWithBlock( int(^block)(int, int))
{
    NSLog(@"This block returns %d", block(5, 5));
}



int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
#pragma mark Create block
        
        ^(int a, int b){
            return a + b;
        };
        
        
        int(^addBlock) (int, int) = ^(int a, int b)
        {
            return a + b;
        };
        
        NSLog(@"The result of adding 1 and 2 is %d", addBlock(1,2));
        
        
        functionWithBlock(addBlock);
        
        
        
        
#pragma mark Iterate over NSArray with Block
        
        NSArray *ducks = @[@"Donald Duck", @"Daisy Duck", @"Huey Duck", @"Dewey Duck", @"Louie Duck", @"Scrooge McDuck", @"Ludwig von Drake"];
        
        void(^logBlock) (id, NSUInteger, BOOL*);
        
        logBlock = ^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"Object at index %lu has value %@", (unsigned long)idx, obj);
        };
        
        //Iterate over the array using a block
        [ducks enumerateObjectsUsingBlock:logBlock];
        
        
        
        
#pragma mark Filter NSArray with block
        
        NSPredicate *mcDuckPredicate = [NSPredicate predicateWithBlock:^BOOL(NSString *evaluatedObject, NSDictionary *bindings) {
            return [evaluatedObject rangeOfString:@"McDuck"].location != NSNotFound;
        }];
        
        NSArray *mcDucks = [ducks filteredArrayUsingPredicate:mcDuckPredicate];
        
        [mcDucks enumerateObjectsUsingBlock:logBlock];
        
        
        
        
        
#pragma mark Blocks with Notifications
        
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification
                                                          object:nil
                                                           queue:nil
                                                      usingBlock:^(NSNotification *note) {
                                                          NSLog(@"Time Zone Changed!");
                                                      }];
        
        [[NSRunLoop currentRunLoop] run];
        
        
        
        
#pragma mark Blocks and Variables
        __block int x = 3;
        
        ^{
            return x++;
        }();
        
        
        
    }
    return 0;
}

