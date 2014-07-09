//
//  MSRequestManager.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSRequestManager.h"
#import <AFNetworking/AFHTTPRequestOperationManager.h>

@implementation MSRequestManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _baseDomain = @"http://api.trakt.tv";
    }
    return self;
}

-(NSOperation<OperationWithDispatchGroup> *)GET:(NSString *)path parameters:(id)parameters succesBlock:(RequestManagerSuccess)successBlock errorBlock:(RequestManagerError)errorBlock{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    AFHTTPRequestOperation *requestOperation = [manager GET:[self.baseDomain stringByAppendingPathComponent:path] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        successBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        errorBlock(error);
    }];
    return (NSOperation<OperationWithDispatchGroup>*)requestOperation;
}

@end
