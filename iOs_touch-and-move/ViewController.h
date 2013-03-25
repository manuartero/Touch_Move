//
//  ViewController.h
//  iOs_touch-and-move
//
//  Created by Manuel Artero Anguita on 24/03/13.
//  Copyright (c) 2013 Manuel Artero Anguita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // Outlet declaration
    IBOutlet UIImageView *background;
    IBOutlet UIImageView *ball_image;
    IBOutlet UIButton *shrink_button;
    IBOutlet UIButton *move_button;     // not in the tutorial
    IBOutlet UIButton *change_button;   // not in the tutorial
    
    // objects declaration
    BOOL shrink_state;
    CGAffineTransform translate;
    CGAffineTransform size;
}

@property(retain, nonatomic) UIImageView* background;
@property(retain, nonatomic) UIImageView* ball_image;
@property(retain, nonatomic) UIButton* shrink_button;
@property(retain, nonatomic) UIButton* move_button;     // not in the tutorial
@property(retain, nonatomic) UIButton* change_button;   // not in the tutorial

- (IBAction)shrink:(id)sender;
- (IBAction)move:(id)sender;
- (IBAction)change:(id)sender;

@end
