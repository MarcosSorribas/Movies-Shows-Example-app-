//
//  MSMovieCellDrawer.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSMovieCellDrawer.h"
#import "MSMovie.h"
#import "MSMovieTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>


@implementation MSMovieCellDrawer


-(UITableViewCell *)cellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath{
    return [tableView dequeueReusableCellWithIdentifier:@"MovieCell" forIndexPath:indexPath];
}

-(void)drawCell:(MSMovieTableViewCell *)cell withItem:(MSMovie*)item{
    cell.myTitleLabel.text = item.movieTitle;
    cell.myDescriptionLabel.text = item.movieDescription;
    
    [cell.myImageThumbail setImageWithURL:[NSURL URLWithString:item.movieImageUrl] placeholderImage:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
        
    }];
    
}

@end
