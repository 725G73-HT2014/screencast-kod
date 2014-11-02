//
//  BNRLogger.h
//  CallbacksAndBlocks
//
//  Created by Gustav Bylund on 02/11/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TargetActionLogger : NSObject

@property (nonatomic) NSDate *lastTime;
- (NSString *) lastTimeString;
- (void) updateLastTime:(NSTimer *)t;

@end
