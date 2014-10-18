//
//  TableViewController.m
//  HashTheTweet
//
//  Created by Rohit Garg on 17/10/14.
//  Copyright (c) 2014 ThoughtWorks. All rights reserved.
//

#import "TableViewController.h"
#import "Tweet.h"

@interface TableViewController ()
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.tweets count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableTextCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.tweets[indexPath.row] message];
    
    return cell;
}

@end
