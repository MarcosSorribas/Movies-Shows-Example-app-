//
//  MSShow+MediaItem.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 06/07/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSShow+MediaItem.h"
#import "MSShowCellDrawer.h"
#import "MSCellDrawerProtocol.h"


@implementation MSShow (MediaItem)
#pragma mark -
#pragma mark - MSCellDrawerProtocol methods

-(id<MSCellDrawerProtocol>)cellDrawer{
    return [[MSShowCellDrawer alloc]init];
}
@end
