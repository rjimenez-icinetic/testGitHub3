//
//  ROCRUDServiceDelegate.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "RORestClient.h"

@protocol ROCRUDServiceDelegate <NSObject>

- (void)itemWithIdentifier:(NSString *)identifier successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock;

- (void)createItemWithParams:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock;

- (void)updateItemWithIdentifier:(NSString *)identifier params:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock;

- (void)deleteItemWithIdentifier:(NSString *)identifier successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock;

- (void)deleteItemsWithIdentifiers:(NSArray *)identifiers successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock;

@optional

- (void)itemsWithParams:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock;

@end
