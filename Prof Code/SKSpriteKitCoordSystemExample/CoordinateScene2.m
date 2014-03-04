//
//  CoordinateScene2.m
//  Coordinate System
//
//  Created by yg on 2/24/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//

#import "CoordinateScene2.h"

SKLabelNode *mySceneLabel;
SKLabelNode *myLabel;
SKSpriteNode* squarePlaceHolder;


@implementation CoordinateScene2


-(void) sceneSetUp{
    
    self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
    
    // mySceneLabel Setup
    mySceneLabel = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
    mySceneLabel.fontColor = [SKColor whiteColor];
    mySceneLabel.text = @"CoordinateScene2!";
    mySceneLabel.fontSize = 18;
    mySceneLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMaxY(self.frame)-40);
    
    [self addChild:mySceneLabel];

    
    // myLabel Setup
    myLabel = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
    myLabel.fontColor = [SKColor yellowColor];
    myLabel.text = @"Touch the Screen!";
    myLabel.fontSize = 18;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
    
}

-(void) drawGridXLines{
    
//    NSMutableArray *array = [NSMutableArray arrayWithObjects:[SKSpriteNode* person1],[SKSpriteNode* person2]] mutableCopy],;
  
    SKSpriteNode* gridx1 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx2 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx3 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx4 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx5 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx6 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx7 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx8 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx9 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
    SKSpriteNode* gridx10 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(CGRectGetWidth(self.frame), 1.0)];
   
    
    NSMutableArray* array= [NSMutableArray arrayWithObjects:gridx1,
                                                            gridx2,
                                                            gridx3,
                                                            gridx4,
                                                            gridx5,
                                                            gridx6,
                                                            gridx7,
                                                            gridx8,
                                                            gridx9,
                                                            gridx10,
                                                            nil];
    
    
    NSLog(@"%d items!", [array count]);

    float counter = 0;

    for (SKSpriteNode *gridLine in array)
    {
        counter = counter + 50;

        gridLine.position = CGPointMake(CGRectGetMidX(self.frame),  counter);
        [self addChild:gridLine];
        
    }
}

-(void) drawGridYLines{
    
    //    NSMutableArray *array = [NSMutableArray arrayWithObjects:[SKSpriteNode* person1],[SKSpriteNode* person2]] mutableCopy],;
    
    SKSpriteNode* gridy1 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy2 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy3 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy4 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy5 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy6 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy7 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy8 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy9 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    SKSpriteNode* gridy10 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(1 , CGRectGetMaxY(self.frame))];
    
    
    NSMutableArray* array= [NSMutableArray arrayWithObjects:gridy1,
                            gridy2,
                            gridy3,
                            gridy4,
                            gridy5,
                            gridy6,
                            gridy7,
                            gridy8,
                            gridy9,
                            gridy10,
                            nil];
    
    
    NSLog(@"%d items!", [array count]);
    
    static float counter = 0;
    
    for (SKSpriteNode *gridLine in array)
        //create an object of type "SKSpriteNote" called "gridline" for every elemetn in the "array"
    {
       
        counter = counter + 50;
        
        gridLine.position = CGPointMake(counter, CGRectGetMidY(self.frame));
        [self addChild:gridLine];
        
    }
    counter = 0;
    
}

-(void) drawGridSquarePlaceHolder{
    squarePlaceHolder = [SKSpriteNode spriteNodeWithColor:[SKColor orangeColor] size:CGSizeMake(10, 10)];
    [self addChild:squarePlaceHolder];
    
                         
}


-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        [self sceneSetUp];
        [self drawGridXLines];
        [self drawGridYLines];
        [self drawGridSquarePlaceHolder];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];

        [myLabel setPosition:location];
        [myLabel setText:[NSString stringWithFormat:@"x: %1.0f, y: %1.0f",location.x, location.y]];
        [squarePlaceHolder setPosition:location];
    }
}


-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event   {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        [myLabel setPosition:location];
        [myLabel setText:[NSString stringWithFormat:@"x: %1.0f, y: %1.0f",location.x, location.y]];
        [squarePlaceHolder setPosition:location];
        
    }
    
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        [myLabel setPosition:location];
        [myLabel setText:[NSString stringWithFormat:@"x: %1.0f, y: %1.0f",location.x, location.y]];
        [squarePlaceHolder setPosition:location];
        
    }
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}
@end
