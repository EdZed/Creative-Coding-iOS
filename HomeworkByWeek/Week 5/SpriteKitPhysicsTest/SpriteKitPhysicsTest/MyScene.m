//
//  MyScene.m
//  SpriteKitPhysicsTest
//
//  Created by Edgar Castro on 2/27/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import "MyScene.h"

#define ARC4RANDOM_MAX 0x100000000
static inline CGFloat ScalarRandomRange(CGFloat min, CGFloat max) {
    return floorf(((double)arc4random() / ARC4RANDOM_MAX) * (max - min) + min);
}

@implementation MyScene

//private variables
{
    
    SKSpriteNode *_square;
    SKSpriteNode *_circle;
    SKSpriteNode *_triangle;
    SKSpriteNode *_octagon;
    
    NSTimeInterval _dt;
    NSTimeInterval _lastUpdateTime;
    CGVector _windForce;
    BOOL _blowing;
    NSTimeInterval _timeUntilSwitchWindDirection;
}

-(instancetype)initWithSize:(CGSize)size {
    if(self = [super initWithSize:size]) {
        // Your code goes here
        _square = [SKSpriteNode spriteNodeWithImageNamed:@"square"];
        _square.position = CGPointMake(self.size.width * 0.15,self.size.height * 0.50);
        [self addChild:_square];
        
        _circle = [SKSpriteNode spriteNodeWithImageNamed:@"circle"];
        _circle.position = CGPointMake(self.size.width * 0.30, self.size.height * 0.50);
        [self addChild:_circle];
        
        _triangle = [SKSpriteNode spriteNodeWithImageNamed:@"triangle"];
        _triangle.position = CGPointMake(self.size.width * 0.50,self.size.height * 0.5);
        [self addChild:_triangle];
        
        _octagon = [SKSpriteNode spriteNodeWithImageNamed:@"octagon"];
        _octagon.position = CGPointMake(self.size.width * 0.70,self.size.height * 0.5);
        [self addChild:_octagon];
        
        
        //sets the physics body for the scene itself
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        
        //physics bodies for shapes
         _circle.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:_circle.size.width/2];
        [_circle.physicsBody setDynamic:NO];
        
        _square.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_square.size];
        
        //1
        CGMutablePathRef trianglePath = CGPathCreateMutable();
        //2
        CGPathMoveToPoint(trianglePath, nil, -_triangle.size.width/2, -_triangle.size.height/2);
        //3
        CGPathAddLineToPoint(trianglePath, nil, _triangle.size.width/2, -_triangle.size.height/2);
        CGPathAddLineToPoint(trianglePath, nil, 0, _triangle.size.height/2);
        CGPathAddLineToPoint(trianglePath, nil, -_triangle.size.width/2, -_triangle.size.height/2);
        
        //4
        _triangle.physicsBody = [SKPhysicsBody bodyWithPolygonFromPath:trianglePath];
        
        //5
        CGPathRelease(trianglePath);
        //end of triangle stuff
        
        //octagon physics body
        //1
        CGMutablePathRef octagonPath = CGPathCreateMutable();
        
        //2
        CGPathMoveToPoint(octagonPath, nil, -_octagon.size.width/2, _octagon.size.height/4);
        //3
        CGPathAddLineToPoint(octagonPath, nil, -_octagon.size.width/2, _octagon.size.height/4);
        CGPathAddLineToPoint(octagonPath, nil, -_octagon.size.width/4, _octagon.size.height/2);
        CGPathAddLineToPoint(octagonPath, nil, _octagon.size.width/4, _octagon.size.height/2);
        CGPathAddLineToPoint(octagonPath, nil, _octagon.size.width/2, _octagon.size.height/4);
        
        CGPathAddLineToPoint(octagonPath, nil, _octagon.size.width/2, -_octagon.size.height/4);
        CGPathAddLineToPoint(octagonPath, nil, _octagon.size.width/4, -_octagon.size.height/2);
        CGPathAddLineToPoint(octagonPath, nil, -_octagon.size.width/4, -_octagon.size.height/2);
        CGPathAddLineToPoint(octagonPath, nil, -_octagon.size.width/2, -_octagon.size.height/4);
        
        //4
        _octagon.physicsBody = [SKPhysicsBody bodyWithPolygonFromPath:octagonPath];
        
        //5
        CGPathRelease(octagonPath);
        //end octagon physics body
        
        [self runAction: [SKAction repeatAction:[SKAction sequence: @[[SKAction performSelector:@selector(spawnSand)onTarget:self], [SKAction waitForDuration:0.02]
        ]] count:100]
         
         ];
    
        }
    return self;
    }

- (void)spawnSand {
    //create a small ball body
    SKSpriteNode *sand = [SKSpriteNode spriteNodeWithImageNamed:@"sand"];
    sand.position = CGPointMake( (float)(arc4random()%(int)self.size.width), self.size.height - sand.size.height);
    sand.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:sand.size.width/2];
    sand.name = @"sand";
    [self addChild:sand];
    
    //bounciness- range only from 0.00 to 1.0
    sand.physicsBody.restitution = 1.0;
    
    //heaviness
    sand.physicsBody.density = 20.0;
    }


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (SKSpriteNode *node in self.children) {
        if ([node.name isEqualToString:@"sand"])
        [node.physicsBody applyImpulse: CGVectorMake(0, arc4random()%50)];
    }
    
    SKAction *shake = [SKAction moveByX:0 y:10 duration:0.05];
    [self runAction:[SKAction repeatAction: [SKAction sequence:@[shake, [shake reversedAction]]]
                                                                                 count:5]];
    
    /*
    if (_circle.physicsBody.dynamic) {
        
        [_circle.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_circle setPosition:location];
    }
    */
    
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInNode:self];
    [_circle removeAllActions];
    [_circle runAction:[SKAction moveTo:touchLocation duration:0.5]];
}


/*
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint location = [[touches anyobject] locationInNode:self];
 
 NSArray *nodes = [self nodesAtPoint:location];
 
 NSLog(@"nodes array =%@", nodes);
 [[nodes.firstObject physicsBody] setAffectedByGravity:NO];

 if (![nodes count] == 0) {
    NSLog(@"nodes count: %i", nodes.count);
 
 [nodes.firstObject setPosition:location];
 
 
    }

}*/

- (void)update:(NSTimeInterval)currentTime {
    // 1
    if (_lastUpdateTime) {
        _dt = currentTime - _lastUpdateTime;
    } else {
        _dt = 0;
    }
    _lastUpdateTime = currentTime;
    // 2
    _timeUntilSwitchWindDirection -= _dt;
    if (_timeUntilSwitchWindDirection <= 0) {
        _timeUntilSwitchWindDirection = ScalarRandomRange(1, 5);
        _windForce = CGVectorMake(ScalarRandomRange(-50,50), 0);
        // 3 – Replace me!
        NSLog(@"Wind force: %0.2f, %0.2f",
        _windForce.dx, _windForce.dy); }
    // 4 – Do something here!
    for (SKSpriteNode *node in self.children) {
        [node.physicsBody applyForce:_windForce];
    }
}
    
    
@end











