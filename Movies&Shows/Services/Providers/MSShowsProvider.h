//
//  MSShowsProvider.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSBaseProvider.h"

@interface MSShowsProvider : MSBaseProvider
-(void)showsWithSuccessBlock:(RequestManagerSuccess)successBlock errorBlock:(RequestManagerError)errorBlock;


@end
