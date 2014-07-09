//
//  MSMovieTableViewCell.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 28/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSMovieTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *myImageThumbail;
@property (weak, nonatomic) IBOutlet UILabel *myTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *myDescriptionLabel;
@end
