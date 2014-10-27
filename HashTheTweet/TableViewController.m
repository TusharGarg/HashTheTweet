//
//  TableViewController.m
//  HashTheTweet
//
//  Created by Rohit Garg on 17/10/14.
//  Copyright (c) 2014 ThoughtWorks. All rights reserved.
//

#import "TableViewController.h"
#import "Tweet.h"
#import "MyCustomCell.h"

@interface TableViewController ()
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.tweets count] + 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
        MyCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableHashTagCell" forIndexPath:indexPath];
        cell.hashTextLabel.text = self.hashTag;
        UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backToTweetSearch)];
        [cell.hashTextLabel addGestureRecognizer:recognizer];
        cell.hashTextLabel.userInteractionEnabled = YES;
        return cell;
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableTextCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.tweets[indexPath.row - 1] message];
    
    return cell;
}

- (void) backToTweetSearch {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"table cell tapped");
}

@end
