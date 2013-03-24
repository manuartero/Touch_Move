//
//  ViewController.m
//  iOs_touch-and-move
//
//  Created by Manuel Artero Anguita on 24/03/13.
//  Copyright (c) 2013 Manuel Artero Anguita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () @end

@implementation ViewController
@synthesize background;
@synthesize ball_image;
@synthesize shrink_button;
@synthesize move_button;
@synthesize change_button;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

/*
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
*/

- (void)dealloc
{
    [background release];
    [ball_image release];
    [shrink_button release];
    [move_button release];
    [change_button release];
    [super dealloc];
}

- (IBAction)shrink:(id)sender
{
    //TODO
}

- (IBAction)move:(id)sender
{
    //TODO
}

- (IBAction)change:(id)sender
{
    //TODO
}

@end
