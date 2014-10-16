
#import "Tweet.h"

@implementation Tweet

- (instancetype)initWithMessage:(NSString *)message hashTags:(NSArray *)hashTags {

    self = [self init];
    _message = message;
    _hashTags = hashTags;

    return self;
}

@end
