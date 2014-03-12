//
//  SKSpriteNode+DebugDraw.h
//  CatNap
//
//  Created by Edgar Castro on 3/12/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

//class interface
@interface SKSpriteNode (DebugDraw)
//method declarations

//adds a debug rectangle to sprite
- (void)attachDebugRectWithSize:(CGSize)s;

//adds arbitrary shape from CGPath
- (void)attachDebugFrameFromPath:(CGPathRef)bodyPath;

@end
