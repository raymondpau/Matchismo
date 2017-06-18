//
//  ViewController.m
//  Matchismo
//
//  Created by Raymond Pau on 17/6/17.
//  Copyright © 2017 Raymond Pau. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (weak, nonatomic) IBOutlet UIButton *cardButton;
@property (nonatomic) int flipCount;
@property (nonatomic) PlayingCardDeck* deck;
@end

@implementation CardGameViewController

- (PlayingCardDeck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    if (sender.selected)
    {
        Card* card = [self.deck drawRandomCard];
        [self.cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
    self.flipCount++;
}


@end
