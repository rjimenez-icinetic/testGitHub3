//
//  JacketsFilterViewController.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "CloudantDS.h"
#import "CloudantDSSchemaItem.h"
#import "CloudantDSSchemaItemKeys.h"
#import "DatasourceManager.h"
#import "JacketsFilterViewController.h"
#import "ROUtils.h"

@implementation JacketsFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Jackets"];

	self.navigationItem.title = NSLocalizedString(@"Jackets", nil);
	
    self.fields = @[
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

