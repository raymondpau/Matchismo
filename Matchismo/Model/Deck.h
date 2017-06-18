//
//  Deck.h
//  Matchismo
//
//  Created by Raymond Pau on 18/6/17.
//  Copyright © 2017 Raymond Pau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
