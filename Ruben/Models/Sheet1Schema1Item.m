//
//  Sheet1Schema1Item.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "Sheet1Schema1Item.h"
#import "NSDictionary+RO.h"

@implementation Sheet1Schema1Item

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.idProp = [dictionary ro_stringForKey:kSheet1Schema1ItemId];
    
    self.descripcion = [dictionary ro_stringForKey:kSheet1Schema1ItemDescripcion];
    
    self.fecha = [dictionary ro_stringForKey:kSheet1Schema1ItemFecha];
    
    self.lugar = [dictionary ro_stringForKey:kSheet1Schema1ItemLugar];
    
    self.nombreCompleto = [dictionary ro_stringForKey:kSheet1Schema1ItemNombreCompleto];
    
    self.oportunidad = [dictionary ro_stringForKey:kSheet1Schema1ItemOportunidad];
    
    self.users = [dictionary ro_stringForKey:kSheet1Schema1ItemUsers];
}

- (id)identifier {
	
	return self.idProp;
}

@end

