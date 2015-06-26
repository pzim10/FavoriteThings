//
//  FavViewController.m
//  FavoriteThings-Objc
//
//  Created by Peter Zimmerman on 6/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavViewController.h"

@interface FavViewController () <UITableViewDataSource>

@end

@implementation FavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:tableView];
    tableView.dataSource = self;
    
    // Register Cell to be Dequeued
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellID"];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Dequeue the Cell
    
//    UITableViewCell *cell = [UITableViewCell new];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    cell.textLabel.text = [self FavoriteThings][indexPath.row];
    [tableView addSubview:cell];
    return  cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self FavoriteThings].count;
}

-(NSArray *)FavoriteThings {
    return @[@"Food", @"Sports", @"Sleep", @"Soccer", @"Family", @"Friends"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
