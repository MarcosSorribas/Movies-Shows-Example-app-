//
//  MSShowsProvider.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 29/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSShowsProvider.h"
#import "MSShow.h"

#define URL_PATH @"shows/trending.json/df2880909bafa2689135188bf47fe5f9"

@implementation MSShowsProvider
-(void)showsWithSuccessBlock:(RequestManagerSuccess)successBlock errorBlock:(RequestManagerError)errorBlock{
    
    NSString *path = URL_PATH;
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
@end
