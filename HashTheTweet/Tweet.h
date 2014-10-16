
#import <Foundation/Foundation.h>

@interface Tweet : NSObject

@property(nonatomic, strong, readonly)NSString *message;
@property(nonatomic, strong)NSArray *hashTags;

- (instancetype)initWithMessage:(NSString *)message hashTags:(NSArray *)hashTags;

@end
