//
//  MSShow.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 28/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSMediaItemProtocol.h"
#import <Mantle/Mantle.h>


@interface MSShow : NSObject<MTLJSONSerializing,MSMediaItemProtocol>
@property (copy,nonatomic,readwrite) NSString *showTitle;
@property (copy,nonatomic,readwrite) NSString *showDescription;
@property (copy,nonatomic,readwrite) NSString *showImageUrl;
@end
