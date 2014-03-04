//
//  ViewController.h
//  MultiSceneAndForLoop3
//

//  Copyright (c) 2014 Edgar Castro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIStepper *myStepperValue;

-(IBAction)stepperPressed: (id)sender;


@end
