//
//  MyScene3.m
//  MultiSceneAndForLoop3
//
//  Created by Edgar Castro on 2/25/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import "MyScene3.h"

@implementation MyScene3

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor yellowColor];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
        
        myLabel.text = @"MyScene 3";
        myLabel.fontSize = 18;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetHeight(self.frame)-35);
        
        [self addChild:myLabel];
    }
    return self;
}

@end
