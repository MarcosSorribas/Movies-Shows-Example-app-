//
//  MSBaseProvider.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSBaseProvider.h"

@implementation MSBaseProvider
- (instancetype)init
{
    self = [super init];
    if (self) {
        _requestManager = [[MSRequestManager alloc]init];
    }
    return self;
}

@end
