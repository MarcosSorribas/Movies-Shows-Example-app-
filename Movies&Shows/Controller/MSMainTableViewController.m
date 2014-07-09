//
//  MSMainTableViewController.m
//  Movies&Shows
//
//  Created by Marcos Sorribas Lopez on 28/06/14.
//  Copyright (c) 2014 Marcos Sorribas. All rights reserved.
//

#import "MSMainTableViewController.h"
#import "MSMediaItemProtocol.h"
#import "MSMediaInteractor.h"

@interface MSMainTableViewController ()

@property (strong,nonatomic,readwrite) NSArray *myMoviesAndShows;
@property (strong,nonatomic,readwrite) MSMediaInteractor *mediaInteractor;
@end

@implementation MSMainTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
    [self loadData];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark - Auxiliar private methods

-(void)loadData{
    [self.mediaInteractor mediaItemsWithCompletion:^(NSArray *mediaItems) {
        self.myMoviesAndShows = mediaItems;
        [self.tableView reloadData];
    }];
}

#pragma mark
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.myMoviesAndShows.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id<MSMediaItemProtocol> item = [self.myMoviesAndShows objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [item.cellDrawer cellForTableView:tableView atIndexPath:indexPath];
    
    [item.cellDrawer drawCell:cell withItem:item];
    
    return cell;
}

#pragma mark -
#pragma mark - Getters & Setters

-(MSMediaInteractor*)mediaInteractor{
    if (_mediaInteractor==nil) {
        _mediaInteractor = [[MSMediaInteractor alloc]init];
    }
    return _mediaInteractor;
}

@end
