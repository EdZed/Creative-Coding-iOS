//
//  MyScene.m
//  Balloons
//
//  Created by Edgar Castro on 3/17/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import "MyScene.h"

@interface MyScene()
@property SKSpriteNode* myCircle;
@property SKSpriteNode* myString1;
@property SKSpriteNode* myString2;
@property SKSpriteNode* myString3;


@property SKPhysicsJoint* myRopeJoint;
@property SKPhysicsJoint* myRopeJoint1;
@property SKPhysicsJoint* myRopeJoint2;

@end

@implementation MyScene

-(void) activateJointRope{
    
    _myRopeJoint = [SKPhysicsJointPin jointWithBodyA:_myCircle.physicsBody bodyB:_myString1.physicsBody anchor:_myCircle.position];
    
    [self.physicsWorld addJoint:_myRopeJoint];
    
    _myRopeJoint1 = [SKPhysicsJointPin jointWithBodyA:_myString1.physicsBody bodyB:_myString2.physicsBody anchor:_myString1.position];
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    
    _myRopeJoint2 = [SKPhysicsJointPin jointWithBodyA:_myString2.physicsBody bodyB:_myString3.physicsBody anchor:_myString2.position];
    
    [self.physicsWorld addJoint:_myRopeJoint2];
   
    
}


-(void) spawnSquares{
    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(25, 25)];
    _mySquare1.alpha =0.8;
    
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(21, 21)];
    _mySquare2.alpha =0.7;
    
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(20, 20)];
    _mySquare3.alpha =.6;
    
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(19, 19)];
    _mySquare4.alpha =0.5;
    
    
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.6)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.7)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.8)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.9)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.1)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.2)];
    //[_mySquare8 setPosition:CGPointMake(200, 203)];
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    //_mySquare8.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:1];
    
    [_mySquare1.physicsBody setRestitution:1.4];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:1.0];
    [_mySquare4.physicsBody setRestitution:1.0];
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    [_mySquare8.physicsBody setRestitution:1.0];
    
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    
}

/*-(void)makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(50, 20)];
    _myShelf.position = CGPointMake(100, 400);
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    [_myShelf.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf];
    
    _myShelf1 = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(50, 20)];
    _myShelf1.position = CGPointMake(100, 300);
    _myShelf1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf1.size];
    [_myShelf1.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf1];
    
    
}*/

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
        [self makeShelf];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
        
        
        
        
        _mySquare1.color = [SKColor blueColor];
        _mySquare2.color = [SKColor blueColor];
        _mySquare3.color = [SKColor blueColor];
        _mySquare4.color = [SKColor blueColor];
        _mySquare5.color = [SKColor blueColor];
        _mySquare6.color = [SKColor blueColor];
        _mySquare7.color = [SKColor blueColor];
        _mySquare8.color = [SKColor blueColor];
        
        
        
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
        
        
        
        // [_mySquare1.physicsBody setDynamic:NO];
        //  [_mySquare2.physicsBody setDynamic:NO];
        
        
        
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    _mySquare1.color = [SKColor redColor];
    _mySquare2.color = [SKColor redColor];
    _mySquare3.color = [SKColor redColor];
    _mySquare4.color = [SKColor redColor];
    _mySquare5.color = [SKColor redColor];
    _mySquare6.color = [SKColor redColor];
    _mySquare7.color = [SKColor redColor];
    _mySquare8.color = [SKColor redColor];
    
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}



-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end

