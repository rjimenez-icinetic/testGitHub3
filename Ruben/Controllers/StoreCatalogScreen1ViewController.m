//
//  StoreCatalogScreen1ViewController.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "JacketsViewController.h"
#import "ROBehavior.h"
#import "ROItemCell.h"
#import "RONavigationAction.h"
#import "ROStyle.h"
#import "ROTableViewCell.h"
#import "ROUtils.h"
#import "ShirtsViewController.h"
#import "StoreCatalogScreen1ViewController.h"
#import "TiesViewController.h"
#import "TrousersViewController.h"
#import "UIImageView+RO.h"

@interface StoreCatalogScreen1ViewController ()

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end

@implementation StoreCatalogScreen1ViewController

static NSString * const kReuseIdentifier = @"Cell";

- (instancetype)init {

    self = [super init];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] log:@"StoreCatalogScreen1"];

	self.navigationItem.title = NSLocalizedString(@"Store Catalog", nil);
	
    self.items = @[                       
                       [[ROItemCell alloc] initWithText1:@"JACKETS"
                                         atImageResource:@"DefaultMenuIcon.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[JacketsViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"TROUSERS"
                                         atImageResource:@"store4197508.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[TrousersViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"SHIRTS"
                                         atImageResource:@"store2362964.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[ShirtsViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"TIES"
                                         atImageResource:@"store340124.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[TiesViewController class]]]
                  ];

    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {

        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    if([self.tableView respondsToSelector:@selector(setCellLayoutMarginsFollowReadableWidth:)]) {

        self.tableView.cellLayoutMarginsFollowReadableWidth = NO;
    }

    [self updateViewConstraints];
}

#pragma mark - Private methods

- (void)configureCell:(ROTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {

    ROItemCell *item = self.items[(NSUInteger)indexPath.row];
    cell.titleLabel.text = item.text1;
    [cell.photoImageView ro_setImage:item.imageResource imageError:[[ROStyle sharedInstance] noPhotoImage]];
    if (item.action && [item.action canDoAction]) {

        cell.userInteractionEnabled = YES;

    } else {

        cell.userInteractionEnabled = NO;
    }
}

#pragma mark - <UITableViewDataSource>

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ROTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier];
    if (cell == nil) {
        
        cell = [[ROTableViewCell alloc] initWithROStyle:ROTableViewCellStylePhotoTitle
                                        reuseIdentifier:kReuseIdentifier]; 
    }
    cell.backgroundColor = [UIColor clearColor];
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.items count];
}

#pragma mark - <UITableViewDelegate>

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {

        cell.preservesSuperviewLayoutMargins = NO;
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {

        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ROItemCell *item = self.items[(NSUInteger)indexPath.row];
    if (item.action && [item.action canDoAction]) {
    
        [item.action doAction];
    }
}

@end

