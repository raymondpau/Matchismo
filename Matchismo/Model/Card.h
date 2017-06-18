//
//  Card.h
//  Matchismo
//
//  Created by Raymond Pau on 18/6/17.
//  Copyright © 2017 Raymond Pau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
