//
//  ROErrorManager.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ROErrorManager.h"
#import "ROError.h"

@implementation ROErrorManager

+ (instancetype)sharedInstance
{
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (void)addError:(ROError *)error
{
    [self.errors addObject:error];
    
    [self processError:error];
}

- (void)processError:(ROError *)error
{
#ifdef DEBUG
    NSLog(@"\n#######################\n");
    NSLog(@"%@", [error description]);
    NSLog(@"\n#######################\n");
#endif
}

@end
