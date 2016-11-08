//
//  RODataDelegate.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "RODataLoader.h"

@class ROError;

@protocol RODataDelegate <NSObject>

/**
 Data loader
 @return dataLoader
 */
- (NSObject<RODataLoader> *)dataLoader;

/**
 Load data
 */
- (void)loadData;

/**
 Load data success
 @param dataObject
 */
- (void)loadDataSuccess:(id)dataObject;

/**
 Load data error
 */
- (void)loadDataError:(ROError *)error;

@end
