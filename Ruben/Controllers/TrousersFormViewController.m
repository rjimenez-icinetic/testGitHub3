//
//  TrousersFormViewController.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ProductsDS.h"
#import "ProductsDSItem.h"
#import "ROError.h"
#import "ROFormFieldImage.h"
#import "ROFormFieldText.h"
#import "RORefreshBehavior.h"
#import "ROUtils.h"
#import "SVProgressHUD.h"
#import "TrousersFormViewController.h"

@interface TrousersFormViewController () <UITextFieldDelegate, ROFormDataDelegate>

@property (nonatomic, strong) ROFormFieldText *nameField;

@property (nonatomic, strong) ROFormFieldText *descriptionPropField;

@property (nonatomic, strong) ROFormFieldText *categoryField;

@property (nonatomic, strong) ROFormFieldText *priceField;

@property (nonatomic, strong) ROFormFieldText *ratingField;

@property (nonatomic, strong) ROFormFieldImage *pictureField;

@property (nonatomic, strong) ROFormFieldImage *thumbnailField;

@end

@implementation TrousersFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"TrousersForm"];

    self.nameField = [ROFormFieldText fieldWithLabel:@"Name" name:kProductsDSItemName required:NO];
    
    self.descriptionPropField = [ROFormFieldText fieldWithLabel:@"Description" name:kProductsDSItemDescription required:NO];
    
    self.categoryField = [ROFormFieldText fieldWithLabel:@"Category" name:kProductsDSItemCategory required:NO];
    
    self.priceField = [ROFormFieldText fieldWithLabel:@"Price" name:kProductsDSItemPrice required:NO];
    
    self.ratingField = [ROFormFieldText fieldWithLabel:@"Rating" name:kProductsDSItemRating required:NO];
    
    self.pictureField = [ROFormFieldImage fieldWithLabel:@"Picture" name:kProductsDSItemPicture viewController:self required:NO];
    
    self.thumbnailField = [ROFormFieldImage fieldWithLabel:@"Thumbnail" name:kProductsDSItemThumbnail viewController:self required:NO];
    
    self.fields = [[NSMutableArray alloc] initWithObjects:
    
                   self.nameField,
                   self.descriptionPropField,
                   self.categoryField,
                   self.priceField,
                   self.ratingField,
                   self.pictureField,
                   self.thumbnailField
    
                   , nil];
}

#pragma mark - Form data delegate

- (void)loadFormData:(ProductsDSItem *)item {

    self.identifier = [item identifier];

    [self.nameField setValue:item.name];
    
    [self.descriptionPropField setValue:item.descriptionProp];
    
    [self.categoryField setValue:item.category];
    
    [self.priceField setValue:item.price];
    
    [self.ratingField setValue:item.rating];
    
    [self.pictureField setValue:item.picture];
    
    [self.thumbnailField setValue:item.thumbnail];
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

