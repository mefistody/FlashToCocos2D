//
//  CCRobot.m
//  FlashToCocos
//
//  Created by Jordi.Martinez on 9/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CCRobot.h"

@implementation CCRobot

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        [self createCharacterFromXML:@"robot"];
        [self setDelegate:self];

        [self playAnimation:@"anim1" loop:YES wait:NO];
        wheel = [self getChildByName:@"wheel"];
        [wheel setIgnoreRotation:YES];
    }
    
    return self;
}


-(void) onCharacter:(FTCCharacter *)_character event:(NSString *)_event atFrame:(int)_frameIndex
{
    if ([_event isEqualToString:@"walk"]) {
        
        id t = [CCMoveBy actionWithDuration:1 position:ccp(100, 0)];
        id w = [CCRotateBy actionWithDuration:1 angle:180];

        [wheel runAction:w];
        [self runAction:t];
    }
    
    if ([_event isEqualToString:@"stop"]) {
        [wheel stopAllActions];
        [self stopAllActions];
        if (self.position.x>1100) self.position = ccp(0, self.position.y);
    }
}

@end
