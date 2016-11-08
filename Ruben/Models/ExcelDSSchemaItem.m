//
//  ExcelDSSchemaItem.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ExcelDSSchemaItem.h"
#import "NSDictionary+RO.h"

@implementation ExcelDSSchemaItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.idProp = [dictionary ro_stringForKey:kExcelDSSchemaItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end

