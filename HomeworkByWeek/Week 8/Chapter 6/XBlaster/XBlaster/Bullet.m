//
//  Bullet.m
//  XBlaster
//
//  Created by Edgar Castro on 3/29/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import "Bullet.h"

@implementation Bullet

- (instancetype)initWithPosition:(CGPoint)position
{
    if (self = [super initWithPosition:position]) {
        self.name = @"bullet";
    }
    return self;
}

+ (SKTexture *)generateTexture
{
    // 1
    static SKTexture *texture = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        // 2
        SKLabelNode *bullet =
        [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        bullet.name = @"bullet";
        bullet.fontSize = 20.0f;
        bullet.fontColor = [SKColor whiteColor];
        bullet.text = @"•";
        
        // 5
        SKView *textureView = [SKView new];
        texture = [textureView textureFromNode:bullet];
        texture.filteringMode = SKTextureFilteringNearest;
    });
    
    return texture;
}

@end