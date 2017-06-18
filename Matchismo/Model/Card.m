//
//  Card.m
//  Matchismo
//
//  Created by Raymond Pau on 18/6/17.
//  Copyright © 2017 Raymond Pau. All rights reserved.
//

#import "Card.h"

@interface Card()
@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
