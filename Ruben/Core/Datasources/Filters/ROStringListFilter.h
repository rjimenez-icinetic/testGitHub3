//
//  StringListFilter.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "ROFilter.h"

/**
 * String list filter
 */
@interface ROStringListFilter : NSObject  <ROFilter>

@property (nonatomic, strong) NSString *fieldName;

@property (nonatomic, strong) NSArray *fieldValue;

+ (ROStringListFilter *)create:(NSString *)fieldName values:(NSMutableArray *)values;

@end