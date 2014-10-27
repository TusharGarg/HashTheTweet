//
//  DummVC.m
//  HashTheTweet
//
//  Created by Rohit Garg on 27/10/14.
//  Copyright (c) 2014 ThoughtWorks. All rights reserved.
//

#import "DummVC.h"

@interface DummVC ()

@property (weak, nonatomic) IBOutlet UILabel *dummyLabel;

@end

@implementation DummVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dummyLabel.text = _dummyText;
    // Do any additional setup after loading the view.
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
