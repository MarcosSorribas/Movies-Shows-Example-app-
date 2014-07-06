//
//  MSCellDrawerProtocol.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSMediaItemProtocol;
@protocol MSCellDrawerProtocol <NSObject>

-(UITableViewCell*)cellForTableView:(UITableView*)tableView atIndexPath:(NSIndexPath *)indexPath;

-(void)drawCell:(UITableViewCell *)cell withItem:(id<MSMediaItemProtocol>)item;

@end