//
//  ViewController.h
//  MathGame
//
//  Created by naomi schettini on 2016-09-12.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *player1Score;

@property (strong, nonatomic) IBOutlet UILabel *player2Score;


@property (strong, nonatomic) IBOutlet UILabel *equation;

@property (strong, nonatomic) IBOutlet UILabel *inputLabel;

- (IBAction)digitInput:(UIButton *)sender;



- (IBAction)enter:(UIButton *)sender;

- (void) updateScore;

@end

