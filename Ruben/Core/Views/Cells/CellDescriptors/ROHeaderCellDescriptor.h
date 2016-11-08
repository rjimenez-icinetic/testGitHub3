//
//  ROHeaderCellDescriptor.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "ROCellDescriptor.h"

@class ROTextStyle;

@interface ROHeaderCellDescriptor : NSObject <ROCellDescriptor>

@property (nonatomic, strong) NSString *text;

@property (nonatomic, strong) ROTextStyle *textStyle;

- (instancetype)initWithText:(NSString *)text;

+ (instancetype)text:(NSString *)text;

- (instancetype)initWithText:(NSString *)text textStyle:(ROTextStyle *)textStyle;

+ (instancetype)text:(NSString *)text textStyle:(ROTextStyle *)textStyle;

- (void)configureCell:(UITableViewCell *)cell;

@end
