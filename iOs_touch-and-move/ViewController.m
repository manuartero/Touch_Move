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
@synthesize move_button;    // not in the tutorial
@synthesize change_button;  // not in the tutorial

/* viewDidLoad is the first viewController method will be executed */
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // additional setup
    self->shrink_state = NO;
    //reduce the image: 25% x; 25% y
    self->size = CGAffineTransformMakeScale(0.25, 0.25);
    // translate the image y:100 up
    self->translate = CGAffineTransformMakeTranslation(0, -100);
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

/* resize <ball_image> */
- (IBAction)shrink:(id)sender
{
    // 1) change the button text: shrink <==> grow
    if (shrink_state) {
        [shrink_button setTitle:@"Shrink" forState:UIControlStateNormal];
    } else {
        [shrink_button setTitle:@"Grow" forState:UIControlStateNormal];
    }

    // 2) button presed
    if (shrink_state == NO) {
        shrink_state = YES;
        
        // A) init animation for 1 sec
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:1.0];
        // B) resize
        ball_image.transform = size;
        //ball_image.transform = CGAffineTransformScale(translate, .25, .25);
        // C) commit animation
        [UIView commitAnimations];
    } else {
        shrink_state = NO;
        
        // A) init animation for 1 sec
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:1.0];
        // B) resize to original state
        ball_image.transform = CGAffineTransformIdentity;
        // C) commit animation
        [UIView commitAnimations];
    }
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
