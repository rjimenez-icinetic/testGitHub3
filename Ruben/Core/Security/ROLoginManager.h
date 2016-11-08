//
//  ROLoginManager.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>

typedef void (^RedirectBlock)();

@interface ROLoginManager : NSObject

+ (instancetype)sharedInstance;

- (void)saveLastSuspendDate;

- (NSString *)suspendDateString;

- (NSString *)expirationTimeString;

- (NSString *)userToken;

- (void)resetLoginState;

- (void)checkLoginStateAndRedirect:(RedirectBlock)redirectBlock;

- (void)updateUserToken:(NSString *)userToken expirationTimeString:(NSString *)expirationTimeString;

- (BOOL)isLogged;

@end
