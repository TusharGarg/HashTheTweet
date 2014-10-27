//
//  ViewController.m
//  HashTheTweet
//
//  Created by TusharGarg on 10/16/14.
//  Copyright (c) 2014 ThoughtWorks. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import "Tweet.h"
#import <STTwitter/STTwitter.h>
#import "TableViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *hashTagTextField;
@property (weak, nonatomic) IBOutlet UILabel *hashSymbolLabel;
@property (strong, nonatomic) STTwitterAPI *stTwitterApi;
@end

@implementation ViewController
- (IBAction)clearTextBox:(id)sender {
    self.hashTagTextField.text = @"";
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        self.stTwitterApi = [STTwitterAPI twitterAPIAppOnlyWithConsumerKey:@"kmpQ84G1f8BbAtwLJoWcM5MXK" consumerSecret:@"XPWIGcIaOlHKSRGOMggLBEBWR7v3eHEy0InitaZpoutY3b7MD1"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.hashTagTextField.delegate = self;
    self.hashSymbolLabel.userInteractionEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.stTwitterApi verifyCredentialsWithSuccessBlock:^(NSString *bearerToken) {
        
        [self.stTwitterApi getSearchTweetsWithQuery:[@"#" stringByAppendingString:textField.text] successBlock:^(NSDictionary *searchMetadata, NSArray *statuses) {
            NSMutableArray *tweets = [[NSMutableArray alloc] initWithCapacity:[statuses count]];
            for(NSDictionary *status in statuses) {
                [tweets addObject:[[Tweet alloc] initWithMessage:status[@"text"] hashTags:nil]];
            }
            [self performSegueWithIdentifier:@"showTweets" sender:tweets];
        } errorBlock:^(NSError *error) {
            NSLog(@"%@", [error description]);
        }];
    }
    errorBlock:^(NSError *error) {
        NSLog(@"%@", [error description]);
    }];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(NSArray *)sender {
    TableViewController *tableViewcontroller = [segue destinationViewController];
    tableViewcontroller.tweets = sender;
    tableViewcontroller.hashTag = self.hashTagTextField.text;
}

@end
