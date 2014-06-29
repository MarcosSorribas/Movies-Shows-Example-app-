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

#pragma mark -
#pragma mark - JSON defines

#define JSON_TITLE @"title"
#define JSON_DESCRIPTION @"overview"
#define JSON_IMAGE @"images.poster"


@implementation MSMovie

#pragma mark -
#pragma mark - Mantle methods

+(NSDictionary*)JSONKeyPathsByPropertyKey{
    return @{
             @"movieTitle":JSON_TITLE,
             @"movieDescription":JSON_DESCRIPTION,
             @"movieImageUrl":JSON_IMAGE
             };
}

#pragma mark -
#pragma mark - MSCellDrawerProtocol methods

-(id<MSCellDrawerProtocol>)cellDrawer{
    return [[MSMovieCellDrawer alloc]init];
}
@end