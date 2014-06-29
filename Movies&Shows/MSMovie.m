//
//  MSMovie.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 28/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSMovie.h"
#import "MSCellDrawerProtocol.h"
#import "MSMovieCellDrawer.h"
@implementation MSMovie
-(id<MSCellDrawerProtocol>)cellDrawer{
    return [[MSMovieCellDrawer alloc]init];
}
@end