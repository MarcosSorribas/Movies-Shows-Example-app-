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
@implementation MSShow
-(id<MSCellDrawerProtocol>)cellDrawer{
    return [[MSShowCellDrawer alloc]init];
}
@end
