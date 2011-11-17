//
//  CCTurtle.m
//  FlashToCocos
//
//  Created by Jordi.Martinez on 9/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//


#import "CCTurtle.h"

@implementation CCTurtle


-(void) dealloc
{
    NSLog(@"CCTurtle deallocated");
}

- (id)init
{
    self = [super init];
    if (self) {
        
        [self setDelegate:self];
        // Initialization code here.
        [self createCharacterFromXML:@"character"];
        [self setDelegate:self];
        
    }
    
    return self;
}



-(void) onCharacter:(FTCCharacter *)_character startsAnimation:(NSString *)_animationId
{
//    float duration = [_character getDurationForAnimation:_animationId]/60.0;
//    
//    if ([_animationId isEqualToString:@"walk_in"]) {
//
//        CCMoveBy *startwalk = [CCMoveBy actionWithDuration:duration position:ccp(-10,0)];
//        [self stopAllActions];
//        [self runAction:startwalk];
//    }
//    
//    if ([_animationId isEqualToString:@"walk"]) {
//        CCMoveBy *walk = [CCMoveBy actionWithDuration:duration position:ccp(-150, 0)];
//        [self stopAllActions];
//        [self runAction:walk];
//    }
//    
//    if ([_animationId isEqualToString:@"walk_out"]) {
//        CCMoveBy *walk = [CCMoveBy actionWithDuration:duration position:ccp(-10, 0)];
//        [self stopAllActions];
//        [self runAction:walk];
//    }
}

-(void) onCharacter:(FTCCharacter *)_character loopedAnimation:(NSString *)_animationId
{
    NSLog(@"looped!");
    
//    if (self.position.x < -300) self.position = ccp(1024, self.position.y);
//    
//    float duration = [_character getDurationForAnimation:_animationId]/60.0;
//    
//    if ([[_character getCurrentAnimation] isEqualToString:@"walk"]) {
//        CCMoveBy *walk = [CCMoveBy actionWithDuration:duration position:ccp(-150, 0)];
//        [self stopAllActions];
//        [self runAction:walk];
//    }
}


-(void) onCharacterCreated:(FTCCharacter *)_character
{
    [_character playAnimation:@"hurray" loop:YES wait:NO];
    
}




@end
