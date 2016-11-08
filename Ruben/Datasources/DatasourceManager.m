//
//  DatasourceManager.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ProductsDS.h"
#import "ContactScreen1DS.h"
#import "CloudantDS.h"
#import "ExcelDS.h"
#import "SheetDS.h"

@implementation DatasourceManager

+ (instancetype)sharedInstance {

    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

#pragma mark - Properties init

- (ProductsDS *)productsDS {

    if (!_productsDS) {

        _productsDS = [ProductsDS new];
    }
    return _productsDS;
}

- (ContactScreen1DS *)contactScreen1DS {

    if (!_contactScreen1DS) {

        _contactScreen1DS = [ContactScreen1DS new];
    }
    return _contactScreen1DS;
}

- (CloudantDS *)cloudantDS {

    if (!_cloudantDS) {

        _cloudantDS = [CloudantDS new];
    }
    return _cloudantDS;
}

- (ExcelDS *)excelDS {

    if (!_excelDS) {

        _excelDS = [ExcelDS new];
    }
    return _excelDS;
}

- (SheetDS *)sheetDS {

    if (!_sheetDS) {

        _sheetDS = [SheetDS new];
    }
    return _sheetDS;
}

#pragma mark - Public methods

- (void)sync {

    [self.cloudantDS sync];
}

@end

