//
//  MSMovie+MediaItem.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 06/07/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSMovie+MediaItem.h"
#import "MSMovieCellDrawer.h"
#import "MSCellDrawerProtocol.h"


@implementation MSMovie (MediaItem)

#pragma mark -
#pragma mark - MSCellDrawerProtocol methods

-(id<MSCellDrawerProtocol>)cellDrawer{
    return [[MSMovieCellDrawer alloc]init];
}

@end
