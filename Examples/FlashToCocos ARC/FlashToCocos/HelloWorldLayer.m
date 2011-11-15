//
//  HelloWorldLayer.m
//  FlashToCocos
//
//  Created by Jordi.Martinez on 9/13/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

#import "CCTurtle.h"


// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	HelloWorldLayer *layer = [HelloWorldLayer node];
	[scene addChild: layer];
	return scene;
}

-(id) init
{
	if( (self=[super init])) {
        
        toggleLab = [CCLabelTTF labelWithString:@"WALK" fontName:@"Helvetica" fontSize:14];
        CCMenuItemLabel *toggleBut = [CCMenuItemLabel itemWithLabel:toggleLab target:self selector:@selector(toggleTurtle)];
        CCMenu *menu = [CCMenu menuWithItems:toggleBut, nil];
        [menu setPosition:ccp(50, 700)];
        [self addChild:menu];
        
        CCTurtle *_turt = [[CCTurtle alloc] init];
        [_turt setPosition:ccp(300, 200)];
        [self addChild:_turt];
        
        turtle = _turt;
        
        [self toggleTurtle];
        
	}
	return self;
}

-(void) toggleTurtle
{
    if ([[turtle getCurrentAnimation] isEqualToString:@"walk"]) {
        [toggleLab setString:@"WALK"];
        [turtle playAnimation:@"walk_out" loop:NO wait:YES];
    }
    
    
    if ([[turtle getCurrentAnimation] isEqualToString:@"walk_out"] || [[turtle getCurrentAnimation] isEqualToString:@""]) {
        [toggleLab setString:@"STOP"];
        [turtle playAnimation:@"walk_in" loop:NO wait:NO];
        [turtle playAnimation:@"walk" loop:YES wait:YES];
    }
}


-(void) removeScene
{
    [self removeAllChildrenWithCleanup:YES]; 
    [self performSelector:@selector(stopEverything) withObject:nil afterDelay:0.2];
}


-(void) stopEverything
{
    
    [[CCDirector sharedDirector] end];

}


- (void) dealloc
{

}
@end
