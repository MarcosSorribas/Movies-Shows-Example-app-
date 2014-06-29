//
//  NSArray+shuffle.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "NSArray+shuffle.h"

@implementation NSArray (shuffle)

-(NSArray *) shuffledArray{
    NSMutableArray *shuffledArray = [self mutableCopy];
    NSUInteger count = [shuffledArray count];
    for (NSUInteger i = 0; i < count; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform(remainingCount);
        [shuffledArray exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    return shuffledArray;
}
@end
