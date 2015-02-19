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
    if ([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"] forState:UIControlStateNormal];
        Card *tempCard = self.theDeck.drawRandomCard;
        if (tempCard)
            [sender setTitle:tempCard.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
