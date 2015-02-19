//
//  Card.h
//  Stanford CS 193P Assignments
//
//  Created by Brett Nishikawa on 2015-02-17.
//
//

@import Foundation;

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
