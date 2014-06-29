//
//  MSMediaItemProtocol.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSCellDrawerProtocol.h"

@protocol MSCellDrawerProtocol;
@protocol MSMediaItemProtocol <NSObject>
@property (strong,nonatomic,readonly) id<MSCellDrawerProtocol> cellDrawer;
@end