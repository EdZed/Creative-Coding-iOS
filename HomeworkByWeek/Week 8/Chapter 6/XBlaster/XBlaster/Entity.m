//
//  Entity.m
//  XBlaster
//
//  Created by Edgar Castro on 3/28/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import "Entity.h"

@implementation Entity

- (instancetype)initWithPosition:(CGPoint)position
{
    if (self = [super init]) {
        self.texture = [[self class] generateTexture];
        self.size = self.texture.size;
        self.position = position;
        _direction = CGPointZero;
    }
    return self;
}

- (void)update:(CFTimeInterval)delta {
    // Overridden by subclasses
}
+ (SKTexture *)generateTexture {
    // Overridden by subclasses
    return nil; }

@end
