
#import "TwitterUser.h"

@implementation TwitterUser

- (instancetype)initWithTwitterHandle:(NSString *)twitterHandle
                               tweets:(NSArray *)tweets {
    self = [super init];
    if(self) {
        _twitterhandle = twitterHandle;
        _tweets = tweets;
    }
    return self;
}

@end
