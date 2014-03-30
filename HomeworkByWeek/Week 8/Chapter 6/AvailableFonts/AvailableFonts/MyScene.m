//
//  MyScene.m
//  AvailableFonts
//
//  Created by Edgar Castro on 3/28/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene {
    int _familyIdx;
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        [self showCurFamily];
    }
    return self;
}

-(void)showCurFamily
{
    // 1
    [self removeAllChildren];
    
    // 2
    NSString * familyName = [UIFont familyNames][_familyIdx];
    NSLog(@"%@", familyName);
    
    // 3
    NSArray * fontNames = [UIFont fontNamesForFamilyName:familyName];
    
    // 4
    [fontNames enumerateObjectsUsingBlock:
     ^(NSString *fontName, NSUInteger idx, BOOL *stop) {
         SKLabelNode * label =
         [SKLabelNode labelNodeWithFontNamed:fontName];
         label.text = fontName;
         label.position = CGPointMake(self.size.width/2,
                                      (self.size.height * (idx+1)/([fontNames count]+1)));
         label.fontSize = 20.0;
         label.verticalAlignmentMode =
         SKLabelVerticalAlignmentModeCenter;
         [self addChild:label];
     }];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    _familyIdx++;
    if (_familyIdx >= [[UIFont familyNames] count]) {
        _familyIdx = 0;
    }
    [self showCurFamily];
}

@end
