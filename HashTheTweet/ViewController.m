//
//  ViewController.m
//  HashTheTweet
//
//  Created by TusharGarg on 10/16/14.
//  Copyright (c) 2014 ThoughtWorks. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *bootcampLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://www.mocky.io/v2/543fb96fc034f90c16e8af4c" parameters:nil success:
     ^(AFHTTPRequestOperation *operation, NSDictionary *responseObject) {

         _bootcampLabel.text =   responseObject[@"title"];

     } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
         
     }];


}

- (void)viewWillAppear:(BOOL)animated {


}

- (void)viewWillDisappear:(BOOL)animated {

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
