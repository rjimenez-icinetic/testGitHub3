//
//  ROModel.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>

@protocol ROModelDelegate <NSObject>

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (void)updateWithDictionary:(NSDictionary *)dictionary;

@optional

- (id)identifier;

@end