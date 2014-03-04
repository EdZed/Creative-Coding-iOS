//
//  MyScene2.m
//  MultiSceneAndForLoop3
//
//  Created by Edgar Castro on 2/25/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import "MyScene2.h"

@implementation MyScene2

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor darkGrayColor];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
        
        myLabel.text = @"MyScene 2";
        myLabel.fontSize = 18;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetHeight(self.frame)-35);
        
        [self addChild:myLabel];
    }
    return self;
}


@end
