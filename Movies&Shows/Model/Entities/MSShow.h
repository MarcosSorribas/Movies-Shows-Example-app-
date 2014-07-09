//
//  MSShow.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 28/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>


@interface MSShow : MTLModel<MTLJSONSerializing>
@property (copy,nonatomic,readwrite) NSString *showTitle;
@property (copy,nonatomic,readwrite) NSString *showImageUrl;
@end
