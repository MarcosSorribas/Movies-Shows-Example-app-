//
//  MSRequestManager.h
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RequestManagerSuccess)(id data);
typedef void (^RequestManagerError)(NSError *error);

@protocol OperationWithDispatchGroup <NSObject>
@property (nonatomic,strong) dispatch_group_t completionGroup;
@end

@interface MSRequestManager : NSObject
@property (copy,nonatomic) NSString *baseDomain;
-(NSOperation<OperationWithDispatchGroup> *)GET:(NSString *)path parameters:(id)parameters succesBlock:(RequestManagerSuccess)successBlock errorBlock:(RequestManagerError)errorBlock;

@end
