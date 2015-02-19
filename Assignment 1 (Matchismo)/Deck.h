//
//  Deck.h
//  Stanford CS 193P Assignments
//
//  Created by Brett Nishikawa on 2015-02-17.
//
//

@import Foundation;
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
