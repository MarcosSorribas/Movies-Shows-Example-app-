//
//  MSMoviesProvider.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSMoviesProvider.h"
#import "MSMovie.h"

@interface MSMoviesProvider ()
@property (nonatomic,strong) NSString *privateKey;
@end

@implementation MSMoviesProvider

-(void)moviesWithSuccessBlock:(RequestManagerSuccess)successBlock errorBlock:(RequestManagerError)errorBlock{
    NSString *path = [self getURLPath];
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

#pragma mark -
#pragma mark - Private Methods


-(NSString*)getURLPath{
    NSString *path = [NSString stringWithFormat:@"movies/trending.json/%@",self.privateKey];
    return path;
}

#pragma mark -
#pragma mark - Getters & Setters

-(NSString*)privateKey{
    if (_privateKey == nil) {
        //Key pasada como argumento al programa.
        NSArray * argumnetos = [[NSProcessInfo processInfo] arguments];
        _privateKey = argumnetos[1];
    }
    return _privateKey;
}
@end
