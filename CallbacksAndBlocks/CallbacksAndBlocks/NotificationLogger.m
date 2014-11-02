//
//  NotificationLogger.m
//  Callbacks
//
//  Created by Gustav Bylund on 02/11/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import "NotificationLogger.h"

@implementation NotificationLogger

- (void)zoneChange:(NSNotification *)noti
{
    NSLog(@"Time Zone changed!");
}
@end
