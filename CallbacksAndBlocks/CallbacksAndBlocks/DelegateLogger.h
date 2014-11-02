//
//  BNRLogger.h
//  CallbacksAndBlocks
//
//  Created by Gustav Bylund on 02/11/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DelegateLogger : NSObject
<NSURLConnectionDelegate, NSURLConnectionDataDelegate>

{
    NSMutableData *_incomingData;
}

@end
