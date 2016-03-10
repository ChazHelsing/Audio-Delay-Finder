//  ViewController.m
//  Audio Delay Finder for iPhone

//  Created by chaz on 3/1/16.
//  Copyright © 2016 Helsing Productions. All rights reserved.

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"back1.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


    // Calculate Button
- (IBAction)CalculateButton:(id)sender {
    
    // The input for the tempature number
    float tempatureNumber = [[_tempatureText text] floatValue];
    
    // The input fo the distance number in feet
    float distanceNumberFeet = [[_distance text] floatValue];
    
    // The conversion from feet to meters for the equation
    float distanceNumberMeters = distanceNumberFeet / 3.28;
    
    
    //  The calculation for the speed of sound
    float speedOfSound = 331 + (0.597 * tempatureNumber);
    
    //  The calculation for the audio delay time
    float audioDelayTime = distanceNumberMeters / speedOfSound;
    
    //  The audio delay time output of the calcualtions
    NSString *output = [NSString stringWithFormat:@"%f", audioDelayTime ];
    _DelayTimeLabel.text = output;
    
    //  The feet to meter convertion calcualtion
    NSString *output2 = [NSString stringWithFormat:@"%f", distanceNumberMeters ];
    _feetToMetersConvertionOutputLabel.text = output2;
    
    
}
    //  Making the keyboard dissapear on the screen with a background tap
- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:YES];
}

@end
