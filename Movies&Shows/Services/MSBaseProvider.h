//
//  MSBaseProvider.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "MSRequestManager.h"

@interface MSBaseProvider : NSObject
@property (strong,nonatomic,readwrite) MSRequestManager *requestManager;
@end
