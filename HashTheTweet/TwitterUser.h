
#import <Foundation/Foundation.h>

@interface TwitterUser : NSObject

@property(nonatomic, strong, readonly)NSString *twitterhandle;
@property(nonatomic, strong, readonly)NSArray *tweets;

- (instancetype)initWithTwitterHandle:(NSString *)twitterHandle
                               tweets:(NSArray *)tweets;

@end
