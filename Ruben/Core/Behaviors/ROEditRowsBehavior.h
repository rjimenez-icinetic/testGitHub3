//
//  ROEditRowsBehavior.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "ROBehavior.h"

@protocol RODataDelegate;

@class ROTableViewController;

@interface ROEditRowsBehavior : NSObject <ROBehavior, UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) ROTableViewController<RODataDelegate, UITableViewDataSource, UITableViewDelegate> *viewController;

- (instancetype)initWithViewController:(ROTableViewController<RODataDelegate, UITableViewDataSource, UITableViewDelegate> *)viewController;

+ (instancetype)behaviorViewController:(ROTableViewController<RODataDelegate, UITableViewDataSource, UITableViewDelegate> *)viewController;

@end
