//
//  MSShowCellDrawer.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSShowCellDrawer.h"
#import "MSShow.h"
#import "MSShowTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation MSShowCellDrawer

-(void)drawCell:(MSShowTableViewCell *)cell withItem:(MSShow*)item{
    cell.myTitleLabel.text = item.showTitle;
    [cell.myImageBackground setImageWithURL:[NSURL URLWithString:item.showImageUrl] placeholderImage:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
    }];
}
-(UITableViewCell *)cellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath{
    return [tableView dequeueReusableCellWithIdentifier:@"ShowCell" forIndexPath:indexPath];
}
@end
