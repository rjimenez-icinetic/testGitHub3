//
//  DatasourceManager.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>

@class ProductsDS;
@class ContactScreen1DS;
@class CloudantDS;
@class ExcelDS;
@class SheetDS;

@interface DatasourceManager : NSObject

@property (nonatomic, strong) ProductsDS *productsDS;

@property (nonatomic, strong) ContactScreen1DS *contactScreen1DS;

@property (nonatomic, strong) CloudantDS *cloudantDS;

@property (nonatomic, strong) ExcelDS *excelDS;

@property (nonatomic, strong) SheetDS *sheetDS;

/**
 Singleton
 @return Class instance
 */
+ (instancetype)sharedInstance;

/**
 Synchronize all datasource
 */
- (void)sync;

@end

