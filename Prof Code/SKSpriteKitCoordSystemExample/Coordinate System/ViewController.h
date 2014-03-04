//
//  ViewController.h
//  Coordinate System
//

//  Copyright (c) 2014 YuryGitman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIStepper *stepperValue;

- (IBAction)stepperPressed:(id)sender;

@end
