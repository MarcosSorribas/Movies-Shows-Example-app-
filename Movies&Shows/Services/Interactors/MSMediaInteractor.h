//
//  MSMediaInteractor.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSMediaInteractor : NSObject
- (void)mediaItemsWithCompletion:(void(^)(NSArray *mediaItems))completion;
@end
