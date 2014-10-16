//
//  HashTheTweetTests.m
//  HashTheTweetTests
//
//  Created by TusharGarg on 10/16/14.
//  Copyright (c) 2014 ThoughtWorks. All rights reserved.
//
#import <Kiwi/Kiwi.h>
#import "TwitterUser.h"

SPEC_BEGIN(TwitterUserSpec)

describe(@"TwitterUser", ^ {
    it(@"should retain message", ^{
        TwitterUser *user = [[TwitterUser alloc] initWithTwitterHandle:@"This is a test handle" tweets:nil];
        [[user.twitterhandle should] equal:@"This is a test handle"];
    });
});

SPEC_END