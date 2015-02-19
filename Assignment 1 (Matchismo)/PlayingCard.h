//
//  PlayingCard.h
//  Stanford CS 193P Assignments
//
//  Created by Brett Nishikawa on 2015-02-17.
//
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
