//
//  MSShow.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 28/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSShow.h"
#import "MSShowCellDrawer.h"
#import "MSCellDrawerProtocol.h"


#pragma mark -
#pragma mark - JSON defines

#define JSON_TITLE @"title"
#define JSON_IMAGE @"images.banner"


@implementation MSShow

#pragma mark -
#pragma mark - Mantle methods

+(NSDictionary*)JSONKeyPathsByPropertyKey{
    return @{
             @"showTitle":JSON_TITLE,
             @"showImageUrl":JSON_IMAGE
             };
}


#pragma mark -
#pragma mark - MSCellDrawerProtocol methods

-(id<MSCellDrawerProtocol>)cellDrawer{
    return [[MSShowCellDrawer alloc]init];
}
@end
