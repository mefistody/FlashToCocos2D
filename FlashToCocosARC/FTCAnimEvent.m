//
//  FTCAnimEvent.m
//  FlashToCocos
//
//  Created by Jordi.Martinez on 9/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FTCAnimEvent.h"

@implementation FTCAnimEvent
@synthesize eventsInfo, frameCount;


-(void) dealloc
{
    
}



- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        NSMutableArray *__eventsInfo = [[NSMutableArray alloc] init];
        [self setEventsInfo:__eventsInfo];
    
    }
    
    return self;
}

@end
