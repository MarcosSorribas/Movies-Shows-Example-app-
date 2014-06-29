//
//  MSMoviesProvider.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSMoviesProvider.h"
#import "MSMovie.h"

#define URL_PATH @"movies/trending.json/df2880909bafa2689135188bf47fe5f9"

@implementation MSMoviesProvider
-(void)moviesWithSuccessBlock:(RequestManagerSuccess)successBlock errorBlock:(RequestManagerError)errorBlock{
    
    NSString *path = URL_PATH;
    NSDictionary *parameters = @{};
    
    [self.requestManager GET:path parameters:parameters succesBlock:^(id data) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            NSMutableArray *movies = [NSMutableArray array];
            for (NSDictionary *movieDictionary in data) {
                MSMovie *movie = [MTLJSONAdapter modelOfClass:[MSMovie class] fromJSONDictionary:movieDictionary error:nil];
                [movies addObject:movie];
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                successBlock(movies);
            });
        });
    } errorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}
@end
