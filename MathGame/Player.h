//
//  Player.h
//  MathGame
//
//  Created by naomi schettini on 2016-09-12.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (assign) int score;
@property (assign) int lives;
@property NSString * name;
@property BOOL isRight;

-(void)scoreIncreases;

-(void) gameOver;
-(instancetype)initWithName:(NSString *)name;

@end
