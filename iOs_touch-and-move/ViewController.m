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
	
    // 1) additional setup: initialize attributes
    self->has_moved = NO;
    self->has_shrunk = NO;
    self->back_images = [NSArray alloc];
    /*
    self->back_images = [ [NSArray alloc] initWithObjects:
                         [UIImageView imageNamed:@"nombre1.png"],
                         [UIImageView imageNamed:@"nombre2.png"],
                         [UIImageView imageNamed:@"nombre3.png"],
                        nil ];
    */
    
    // 2) define how much will the "shrunk button" reduce the image: 25%X; 25%Y
    self->size = CGAffineTransformMakeScale(0.25, 0.25);
    
    // 3) define how much will the "translate button" move the image: Y-100-UP
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
    [back_images release];
    [super dealloc];
}


/**
 * Method which responds to <Touch Events>
 */
- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 1) define <touch> object
    UITouch *touch = [[event allTouches] anyObject];
    
    // 2) check if the user has touched IN the icon:
    //    CGRectContainsPoint(rectangule, point)
    if (CGRectContainsPoint( [ball_image frame], [touch locationInView:nil] )) {
        // TODO
        
        // 3) Translate the icon to the touched point
        ball_image.center = [touch locationInView:nil];
    }
    

}


/* resize the <ball_image> icon */
- (IBAction)shrink:(id)sender
{
    // 1) change the button text: shrink <==> grow
    if (has_shrunk) {
        [shrink_button setTitle:@"Shrink" forState:UIControlStateNormal];
    } else {
        [shrink_button setTitle:@"Grow" forState:UIControlStateNormal];
    }

    // 2) button pressed
    
    if (has_shrunk == NO && has_moved == YES) {
    // shrunk the icon
        
        // A) init animation for 1 sec
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:1.0];
        // B) resize
        ball_image.transform = size;
        //ball_image.transform = CGAffineTransformScale(translate, .25, .25);
        // C) commit animation
        [UIView commitAnimations];
    
        has_shrunk = YES;
        
    } else if (has_shrunk == NO && has_moved == YES) {
    // let the icon in its place; shrunk the icon
        
        // A) init animation for 1 sec
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:1.0];
        // B) resize to original state
        ball_image.transform = CGAffineTransformIdentity;
        // C) commit animation
        [UIView commitAnimations];
    
        has_shrunk = YES;
        
    } else if (has_shrunk == NO && has_moved == NO) {
    // move to its new location; grow the icon
        
        has_shrunk = NO;
        
    } else {
    // move to the original place; grwo the icon
        
        has_shrunk = NO;
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
