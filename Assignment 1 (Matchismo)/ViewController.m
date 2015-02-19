//
//  ViewController.m
//  Assignment 1 (Matchismo)
//
//  Created by Brett Nishikawa on 2015-02-17.
//
//

#import "ViewController.h"
#import "Deck.h"
#import "Card.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *theDeck;

@end

@implementation ViewController

- (Deck *)theDeck
{
    if (!_theDeck)
        _theDeck = [[PlayingCardDeck alloc] init];
    return _theDeck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    Card *tempCard = [self.theDeck drawRandomCard];
    if ([sender.currentTitle length])
    {
        if (tempCard)
        {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"] forState:UIControlStateNormal];
            [sender setTitle:@"" forState:UIControlStateNormal];
            [self.theDeck addCard:tempCard]; // re-add unused card to deck
        }
        else
        {
            [sender setHidden:YES];
        }

    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"] forState:UIControlStateNormal];
        if (tempCard)
            [sender setTitle:tempCard.contents forState:UIControlStateNormal];
        else
            [sender setHidden:YES];
    }
    self.flipCount++;
}

@end
