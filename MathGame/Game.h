//
//  Game.h
//  MathGame
//
//  Created by naomi schettini on 2016-09-12.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Game : NSObject

@property int firstRandomNum;

@property int secondRandomNum;

@property int answer;

@property NSString * userInput;



-(void) calculateEquation;

-(void) generateNewEquation;






@end
