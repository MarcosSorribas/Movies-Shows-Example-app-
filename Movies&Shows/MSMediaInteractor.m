//
//  MSMediaInteractor.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSMediaInteractor.h"
#import "MSMoviesProvider.h"
#import "MSShowsProvider.h"
#import "NSArray+shuffle.h"
@interface MSMediaInteractor (){
}
@property (strong,nonatomic) MSMoviesProvider *moviesProvider;
@property (strong,nonatomic) MSShowsProvider *showsProvider;
@end

@implementation MSMediaInteractor
- (instancetype)init
{
    self = [super init];
    if (self) {
        _moviesProvider = [[MSMoviesProvider alloc]init];
        _showsProvider = [[MSShowsProvider alloc]init];
    }
    return self;
}

-(void)mediaItemsWithCompletion:(void (^)(NSArray *))completion{
    __block NSMutableArray *mediaItems = [NSMutableArray array];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        dispatch_group_t dispatchGroup = dispatch_group_create();
        
        dispatch_group_enter(dispatchGroup);
        [self.moviesProvider moviesWithSuccessBlock:^(NSArray *movies) {
            [mediaItems addObjectsFromArray:movies];
            dispatch_group_leave(dispatchGroup);
        } errorBlock:^(NSError *error) {
            
        }];
        
        dispatch_group_enter(dispatchGroup);
        [self.showsProvider showsWithSuccessBlock:^(NSArray *shows) {
            [mediaItems addObjectsFromArray:shows];
            dispatch_group_leave(dispatchGroup);
        } errorBlock:^(NSError *error) {
            
        }];
        
        dispatch_group_notify(dispatchGroup, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            NSArray *shuffledArray = [mediaItems shuffledArray];
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(shuffledArray);
            });
        });
    });
}


@end
