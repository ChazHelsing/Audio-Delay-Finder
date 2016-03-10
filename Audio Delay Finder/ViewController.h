//
//  ViewController.h
//  Audio Delay Finder
//
//  Created by chaz on 3/1/16.
//  Copyright © 2016 Helsing Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempatureText;

@property (weak, nonatomic) IBOutlet UITextField *feet;
@property (weak, nonatomic) IBOutlet UITextField *inches;

@property (weak, nonatomic) IBOutlet UILabel *AudioDelayFinderLabel;

@property (weak, nonatomic) IBOutlet UILabel *enterTemapatureTextLabel;

@property (weak, nonatomic) IBOutlet UILabel *distanceFromSourceTextLabel;

@property (weak, nonatomic) IBOutlet UILabel *feetToMetersConvertionTextLabel;

@property (weak, nonatomic) IBOutlet UILabel *feetToMetersConvertionOutputLabel;


- (IBAction)CalculateButton:(id)sender;
- (IBAction)backgroundTap:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *DelayTimeLabel;


@end

