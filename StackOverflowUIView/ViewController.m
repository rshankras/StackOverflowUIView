//
//  ViewController.m
//  StackOverflowUIView
//
//  Created by Ravi Shankar on 20/03/14.
//  Copyright (c) 2014 Ravi Shankar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    CGRect originalFrame;
}
@synthesize testView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    originalFrame = self.testView.frame;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changeHeight:(id)sender {
    CGRect frame = self.testView.frame;
    frame.size.height = 50;
    self.testView.frame = frame;
}

-(IBAction)revert:(id)sender{
    self.testView.frame = originalFrame;
}

@end
