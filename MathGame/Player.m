//
//  Player.m
//  MathGame
//
//  Created by naomi schettini on 2016-09-12.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName: (NSString *) name
{
    self = [super init];
    if (self) {
        _score = 0;
        _lives = 3;
        _name = name;
    }
    return self;
}

-(void) scoreIncreases {
    if (self.isRight == TRUE) {
        self.score = self.score++;
    }
    
    else if (self.isRight == FALSE) {
        self.score = self.score--;
    }
}

-(void) gameOver {
    if (self.score == 0) {
        NSLog(@"game over");
    }
}
@end
