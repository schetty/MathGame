//
//  Game.m
//  MathGame
//
//  Created by naomi schettini on 2016-09-12.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Game.h"

@implementation Game

- (instancetype)init
{
    self = [super init];
    if (self) {
        _firstRandomNum = arc4random_uniform(10);
        _secondRandomNum = arc4random_uniform(10);

    }
    return self;
}

-(void) calculateEquation {
    self.answer = self.firstRandomNum + self.secondRandomNum;
    
    
}

-(void) generateNewEquation {
    self.firstRandomNum = arc4random_uniform(10);
    self.secondRandomNum = arc4random_uniform(10);
    self.answer = 0;
}



@end
