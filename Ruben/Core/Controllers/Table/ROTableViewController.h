//
//  ROTableViewController.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ROViewController.h"
#import "RODataDelegate.h"

@interface ROTableViewController : ROViewController <RODataDelegate>

/**
 *  Table view
 */
@property (nonatomic, strong) UITableView *tableView;

/**
 *  Table view style
 */
@property (nonatomic, assign) UITableViewStyle tableViewStyle;

/**
 *  Items to load
 */
@property (nonatomic, strong) NSArray *items;

/**
 Constructor with style
 @param style Table view style
 @return Class instance
 */
- (instancetype)initWithStyle:(UITableViewStyle)style;

/**
 Configure constraints
 */
- (void)setupConstraints;

/**
 Load data on pagination
 */
- (void)loadMore;

@end
