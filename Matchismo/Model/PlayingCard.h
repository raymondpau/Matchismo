//
//  PlayingCard.h
//  Matchismo
//
//  Created by Raymond Pau on 18/6/17.
//  Copyright © 2017 Raymond Pau. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
