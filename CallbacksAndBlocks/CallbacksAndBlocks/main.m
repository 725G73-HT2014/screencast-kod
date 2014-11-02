//
//  main.m
//  CallbacksAndBlocks
//
//  Created by Gustav Bylund on 02/11/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TargetLogger.h"
#import "DelegateLogger.h"
#import "NotificationLogger.h"
void eventWithTargetAction()
{
    TargetLogger *logger = [[TargetLogger alloc] init];
    
    __unused NSTimer *timer = [NSTimer
                               scheduledTimerWithTimeInterval:2.0
                               target:logger
                               selector:@selector(updateLastTime:)
                               userInfo:nil
                               repeats:YES];
}

void eventWithDelegate()
{
    DelegateLogger *logger = [[DelegateLogger alloc] init];
    
    NSURL *url = [NSURL URLWithString:@"https://www.gutenberg.org/cache/epub/2701/pg2701.txt"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    __unused NSURLConnection *fetchConn = [[NSURLConnection alloc]
                                           initWithRequest:request
                                           delegate:logger
                                           startImmediately:YES];
}

void eventWithNotification()
{
    NotificationLogger *logger = [[NotificationLogger alloc] init];
    
    [[NSNotificationCenter defaultCenter]
     addObserver:logger
     selector:@selector(zoneChange:)
     name:NSSystemClockDidChangeNotification
     object:nil];
}

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        eventWithTargetAction();
        eventWithDelegate();
        eventWithNotification();
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
