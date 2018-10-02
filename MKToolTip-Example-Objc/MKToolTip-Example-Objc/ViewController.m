//
//  ViewController.m
//  MKToolTip-Example-Objc
//
//  Created by Metin Kılıçaslan on 2.10.2018.
//  Copyright © 2018 Metin Kilicaslan. All rights reserved.
//

#import "ViewController.h"
#import <MKToolTip/MKToolTip-Swift.h>

@interface ViewController () <MKToolTipDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)barButton1Tapped:(UIBarButtonItem *)sender {
    [MKToolTip showWithItem:sender
                 identifier:@""
                      title:@"Pharetra"
                    message:@"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
              arrowPosition:ArrowPositionTop
                preferences:[[Preferences alloc] init]
                   delegate:nil];
}

- (IBAction)button1Tapped:(UIButton *)sender {
    
    UIColor *gradientColor =  [[UIColor alloc] initWithRed:0.886 green:0.922 blue:0.941 alpha:1.000];
    UIColor *gradientColor2 =  [[UIColor alloc] initWithRed:0.812 green:0.851 blue:0.875 alpha:1.000];
    
    Preferences *preferences = [[Preferences alloc] init];
    [[preferences drawing] setBubbleGradientColors:@[ gradientColor, gradientColor2 ]];
    [[preferences drawing] setArrowTipCornerRadius:0];
    [[preferences drawing] setMessageColor:[UIColor blackColor]];
    
    [MKToolTip showWithView:sender
                 identifier:@""
                      title:nil
                    message:@"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
              arrowPosition:ArrowPositionLeft
                preferences:preferences
                   delegate:nil];
}

- (IBAction)button2Tapped:(UIButton *)sender {
    
    UIColor *gradientColor =  [[UIColor alloc] initWithRed:0.165 green:0.322 blue:0.596 alpha:1.000];
    UIColor *gradientColor2 =  [[UIColor alloc] initWithRed:0.118 green:0.235 blue:0.447 alpha:1.000];
    
    Preferences *preferences = [[Preferences alloc] init];
    [[preferences drawing] setBubbleGradientColors:@[ gradientColor, gradientColor2 ]];
    
    [MKToolTip showWithView:sender
                 identifier:@""
                      title:@"Dapibus"
                    message:@"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
              arrowPosition:ArrowPositionRight
                preferences:preferences
                   delegate:nil];
}

- (IBAction)button3Tapped:(UIButton *)sender {
    
    UIColor *gradientColor =  [[UIColor alloc] initWithRed:0.988 green:0.714 blue:0.624 alpha:1.000];
    UIColor *gradientColor2 =  [[UIColor alloc] initWithRed:0.988 green:0.714 blue:0.624 alpha:1.000];
    
    Preferences *preferences = [[Preferences alloc] init];
    [[preferences drawing] setBubbleGradientColors:@[ gradientColor, gradientColor2 ]];
    
    
    [MKToolTip showWithView:sender
                 identifier:@""
                      title:nil
                    message:@"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
              arrowPosition:ArrowPositionBottom
                preferences:preferences
                   delegate:nil];
}

@end
