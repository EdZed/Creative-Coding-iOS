//
//  CoordinateScene1.m
//  Coordinate System
//
//  Created by yg on 2/24/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//

#import "CoordinateScene1.h"

SKLabelNode* labelSceen;
SKLabelNode* lableTouch;

@implementation CoordinateScene1





-(void) setUpScene{
    
    // set background color
    self.backgroundColor = [SKColor darkGrayColor];
    
    
    // labelScreen Setup
    SKLabelNode *labelSceen = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
    labelSceen.text = @"CoordinateScene1";
    labelSceen.fontSize = 16;
    labelSceen.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMaxY(self.frame)-40);
    [self addChild:labelSceen];

    // lableTouch Setup
    lableTouch = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
    lableTouch.fontColor = [SKColor yellowColor];
    lableTouch.text = @"Hello, World!";
    lableTouch.fontSize = 18;
    lableTouch.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:lableTouch];

    
    
}


-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        [self setUpScene];
        
        
        }
    return self;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch began");
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        lableTouch.position = location;
        lableTouch.text = [NSString stringWithFormat:@"x: %1.0F, y: %1.0f",location.x, location.y ];
        NSLog(@"x:%f, y:%f",location.x, location.y);
    }
    
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
