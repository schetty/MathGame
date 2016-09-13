//
//  ViewController.m
//  MathGame
//
//  Created by naomi schettini on 2016-09-12.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "ViewController.h"
#import "Game.h"
#import "Player.h"

@interface ViewController ()

@property Game *gameModel;


@property Player *player1;
@property Player *player2;
@property Player *currentPlayer;





@end

@implementation ViewController

- (void) updateScore {
    self.player1Score.text = [NSString stringWithFormat: @"%d", self.player1.score];
    self.player2Score.text = [NSString stringWithFormat: @"%d", self.player2.score];
    [self.gameModel generateNewEquation];
    self.equation.text = [NSString stringWithFormat:@"%d + %d",self.gameModel.firstRandomNum, self.gameModel.secondRandomNum];
    self.inputLabel.text = @"";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameModel = [[Game alloc]init];
    
    self.player1 = [[Player alloc] init];
    self.player1.name = @"Player 1";
    self.player2 = [[Player alloc] init];
    self.player2.name = @"Player 2";

    
    
    self.currentPlayer = self.player1;
    
    [self updateScore];
    
    
    
    self.equation.text = [NSString stringWithFormat:@"%d + %d",self.gameModel.firstRandomNum, self.gameModel.secondRandomNum];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)digitInput:(UIButton *)sender {
    self.gameModel.answer = self.gameModel.answer * 10 + sender.tag;
    self.inputLabel.text = [NSString stringWithFormat:@"%ld", self.gameModel.answer];
        self.gameModel.userInput = self.inputLabel.text;

}

- (IBAction)enter:(UIButton *)sender {
         [self.gameModel calculateEquation];
    if ([[NSString stringWithFormat:@"%d", self.gameModel.answer] isEqualToString: self.inputLabel.text]) {
        self.currentPlayer.isRight = YES;
        self.currentPlayer.score ++;
    }
    else if (![[NSString stringWithFormat:@"%d", self.gameModel.answer] isEqualToString: self.inputLabel.text]) {
        self.currentPlayer.isRight = NO;
        self.currentPlayer.score --;
        self.currentPlayer.lives --;
        
        if (self.currentPlayer.score <= 0) {
            self.equation.text = @"Game Over";
            
        
        }
        
    }
    
    [self.gameModel generateNewEquation];
    [self updateScore];
    
    // swap players
    if (self.player1 == self.currentPlayer) {
        self.currentPlayer = self.player2;
        self.inputLabel.text = (@"%@, your turn", self.currentPlayer.name);
    }
    
}
@end
