//
//  JacketsFormViewController.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "CloudantDS.h"
#import "CloudantDSSchemaItem.h"
#import "DatasourceManager.h"
#import "JacketsFormViewController.h"
#import "ROError.h"
#import "RORefreshBehavior.h"
#import "ROUtils.h"
#import "SVProgressHUD.h"

@interface JacketsFormViewController () <UITextFieldDelegate, ROFormDataDelegate>


@end

@implementation JacketsFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"JacketsForm"];

}

#pragma mark - Form data delegate

- (void)loadFormData:(CloudantDSSchemaItem *)item {

    self.identifier = [item identifier];

}

#pragma mark - Form actions

- (void)cancelButtonAction:(id)sender {

    [super cancelButtonAction:sender];
}

- (void)deleteButtonAction:(id)sender {

    [super deleteButtonAction:sender];
}

- (void)saveButtonAction:(id)sender {

    [super saveButtonAction:sender];
}

- (void)confirmDelete {

    [super confirmDelete];
}

- (void)deleteItem {

    [super deleteItem];
}

- (void)updateItem {

    [self.hiddenValues removeAllObjects];

    [super updateItem];
}

- (void)createItem {
    
    [super createItem];
}

@end

