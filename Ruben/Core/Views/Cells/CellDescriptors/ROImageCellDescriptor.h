//
//  ROImageCellDescriptor.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "ROCellDescriptor.h"
#import "ROAction.h"

@interface ROImageCellDescriptor : NSObject <ROCellDescriptor>

@property (nonatomic, strong) NSString *imageString;

@property (nonatomic, strong) NSObject<ROAction> *action;

- (instancetype)initWithImageString:(NSString *)imageString action:(NSObject<ROAction> *)action;

+ (instancetype)imageString:(NSString *)imageString action:(NSObject<ROAction> *)action;

- (void)configureCell:(UITableViewCell *)cell;

@end
