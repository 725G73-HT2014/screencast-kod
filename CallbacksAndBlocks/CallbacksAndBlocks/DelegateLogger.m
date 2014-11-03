//
//  BNRLogger.m
//  CallbacksAndBlocks
//
//  Created by Gustav Bylund on 02/11/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import "DelegateLogger.h"

@implementation DelegateLogger

- (void) connection:(NSURLConnection *)connection
     didReceiveData:(NSData *)data
{
    NSLog(@"recieved %lu bytes", [data length]);
    
    //Create mutable data if it doesnt exist
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"All data here now");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    NSLog(@"String has %lu characters", [string length]);
    
    
    //NSLog(@"The whole string is %@", string);
}

- (void) connection:(NSURLConnection *)connection
   didFailWithError:(NSError *)error
{
    NSLog(@"Connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

@end
