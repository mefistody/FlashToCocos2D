//
//  HelloWorldLayer.h
//  FlashToCocos
//
//  Created by Jordi.Martinez on 9/13/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "CCTurtle.h"

// HelloWorldLayer



@interface HelloWorldLayer : CCLayer 
{
    
    CCTurtle                *turtle;
    CCLabelTTF              *toggleLab;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

-(void) toggleTurtle;
-(void) removeScene;
-(void) stopEverything;
@end
