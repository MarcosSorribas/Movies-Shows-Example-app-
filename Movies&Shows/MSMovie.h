//
//  MSMovie.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 28/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSMediaItemProtocol.h"
#import <Mantle/Mantle.h>

@interface MSMovie : MTLModel<MTLJSONSerializing,MSMediaItemProtocol>

@property (copy,nonatomic,readwrite) NSString *movieTitle;
@property (copy,nonatomic,readwrite) NSString *movieDescription;
@property (copy,nonatomic,readwrite) NSString *movieImageUrl;

@end