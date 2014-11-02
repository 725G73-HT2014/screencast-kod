//
//  NotificationLogger.h
//  Callbacks
//
//  Created by Gustav Bylund on 02/11/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotificationLogger : NSObject

- (void)zoneChange:(NSNotification *)noti;
@end
