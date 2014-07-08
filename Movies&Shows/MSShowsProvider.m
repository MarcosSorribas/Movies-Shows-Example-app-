//
//  MSShowsProvider.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSShowsProvider.h"
#import "MSShow.h"

@interface MSShowsProvider ()
@property (nonatomic,strong) NSString *privateKey;
@end

@implementation MSShowsProvider
-(void)showsWithSuccessBlock:(RequestManagerSuccess)successBlock errorBlock:(RequestManagerError)errorBlock{
    
    NSString *path = [self getURLPath];
    NSDictionary *parameters = @{};
    [self.requestManager GET:path parameters:parameters succesBlock:^(id data) {
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
                NSMutableArray *shows = [NSMutableArray array];
                for (NSDictionary *showDictionary in data) {
                    MSShow *show = [MTLJSONAdapter modelOfClass:[MSShow class] fromJSONDictionary:showDictionary error:nil];
                    [shows addObject:show];
                }
                dispatch_async(dispatch_get_main_queue(), ^{
                    successBlock(shows);
                });
            });
    } errorBlock:^(NSError *error) {
        errorBlock(error);
    }];
}


#pragma mark -
#pragma mark - Private Methods


-(NSString*)getURLPath{
    NSString *path = [NSString stringWithFormat:@"shows/trending.json/%@",self.privateKey];
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
