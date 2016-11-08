//
//  ShirtsFilterViewController.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ProductsDS.h"
#import "ProductsDSItem.h"
#import "ProductsDSItemKeys.h"
#import "ROFilterFieldSelection.h"
#import "ROUtils.h"
#import "ShirtsFilterViewController.h"

@implementation ShirtsFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Shirts"];

	self.navigationItem.title = NSLocalizedString(@"Shirts", nil);
	
    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"Price"
                                              fieldName:kProductsDSItemPrice
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Rating"
                                              fieldName:kProductsDSItemRating
                                         formController:self
                                                 single:NO],
                     
    ];
}

#pragma mark - Filter actions

- (void)close {
  
    [super close];
}

- (void)cancel {
  
    [super cancel];
}

- (void)submit {

    [super submit];
}

- (void)reset {
  
    [super reset];
}

@end

