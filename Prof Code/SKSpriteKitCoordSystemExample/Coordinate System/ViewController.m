//
//  ViewController.m
//  Coordinate System
//
//  Created by yg on 2/24/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"
#import "CoordinateScene1.h"
#import "CoordinateScene2.h"
#import "CoordinateScene3.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SKScene * scene = [CoordinateScene1 sceneWithSize:skView.bounds.size];
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

- (IBAction)stepperPressed:(id)sender {
    NSLog(@"stepperValue %f", _stepperValue.value);
    [self switchLevels];
}

-(void) switchLevels{
    
    int localIntValue = _stepperValue.value;
    
    switch (localIntValue ) {
        case 0:{
                NSLog(@"Level %i", localIntValue);
 
            // Configure the view.
            SKView * skView = (SKView *)self.view;
            skView.showsFPS = YES;
            skView.showsNodeCount = YES;
            
            // Create and configure the scene.
            SKScene * scene = [CoordinateScene1 sceneWithSize:skView.bounds.size];
            scene.scaleMode = SKSceneScaleModeAspectFill;
            
            // Present the scene.
            [skView presentScene:scene];
        }
            break;
            
        case 1:{
            NSLog(@"Level %i", localIntValue);
            // Configure the view.
            SKView * skView2 = (SKView *)self.view;
            skView2.showsFPS = YES;
            skView2.showsNodeCount = YES;
            
            // Create and configure the scene.
            SKScene * scene2 = [CoordinateScene2 sceneWithSize:skView2.bounds.size];
            scene2.scaleMode = SKSceneScaleModeAspectFill;
            
            // Present the scene.
            [skView2 presentScene:scene2];
        }
            break;
            
        case 2:{
                NSLog(@"Level %i", localIntValue);
            
            // Configure the view.
            SKView * skView3 = (SKView *)self.view;
            skView3.showsFPS = YES;
            skView3.showsNodeCount = YES;
            
            // Create and configure the scene.
            SKScene * scene3 = [CoordinateScene3 sceneWithSize:skView3.bounds.size];
            scene3.scaleMode = SKSceneScaleModeAspectFill;
            
            // Present the scene.
            [skView3 presentScene:scene3];
        }
            break;
            
  default:
    break;
}
}
















@end
