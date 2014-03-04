//
//  ViewController.m
//  MultiSceneAndForLoop
//
//  Created by Edgar Castro on 2/25/14.
//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"
#import "MyScene2.h"
#import "MyScene3.h"


//SKView * skView;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView *skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SKScene * scene = [MyScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

-(IBAction)stepperPressed: (id)sender {
    
    int localIntValue = _myStepperValue.value;
    
    NSLog(@"Stepper value is %f", _myStepperValue.value);
    
    switch (localIntValue) {
        case 1:{
            NSLog(@"I'm in case 1");
            // Configure the view.
            SKView *skView = (SKView *)self.view;
            skView.showsFPS = YES;
            skView.showsNodeCount = YES;
            
            // Create and configure the scene.
            SKScene * scene = [MyScene sceneWithSize:skView.bounds.size];
            scene.scaleMode = SKSceneScaleModeAspectFill;
            
            // Present the scene.
            [skView presentScene:scene];
        }
    break;
            
        case 2:{
            NSLog(@"I'm in case 2");
            // Configure the view.
            SKView *skView = (SKView *)self.view;
            skView.showsFPS = YES;
            skView.showsNodeCount = YES;
            
            // Create and configure the scene.
            SKScene * scene = [MyScene2 sceneWithSize:skView.bounds.size];
            scene.scaleMode = SKSceneScaleModeAspectFill;
            
            // Present the scene.
            [skView presentScene:scene];
        }
            break;
            
        case 3:{
            NSLog(@"I'm in case 3");
            // Configure the view.
            SKView *skView = (SKView *)self.view;
            skView.showsFPS = YES;
            skView.showsNodeCount = YES;
            
            // Create and configure the scene.
            SKScene * scene = [MyScene3 sceneWithSize:skView.bounds.size];
            scene.scaleMode = SKSceneScaleModeAspectFill;
            
            // Present the scene.
            [skView presentScene:scene];
        }
            break;

  default:
    break;
}
}

@end
