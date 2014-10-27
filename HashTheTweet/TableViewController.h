//
//  TableViewController.h
//  HashTheTweet
//
//  Created by Rohit Garg on 17/10/14.
//  Copyright (c) 2014 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController<UITableViewDelegate>
@property (nonatomic, strong) NSArray *tweets;
@property (nonatomic, strong) NSString *hashTag;
@end
