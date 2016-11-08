//
//  CloudantDSSchemaItem.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "CloudantDSSchemaItem.h"
#import "CDTDocumentRevision.h"
#import "NSDictionary+RO.h"

@implementation CloudantDSSchemaItem

@synthesize rev = _rev;

- (instancetype)initWithDocumentRevision:(CDTDocumentRevision *)rev {
    
    self = [super init];
    if (self) {
        
        self.rev = rev;
    }
    return self;
}

+ (instancetype)itemWithDocumentRevision:(CDTDocumentRevision *)rev {

    return [[self alloc] initWithDocumentRevision:rev];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

    self = [super init];
    if (self) {

        [self updateWithDictionary:dictionary];
    }
    return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.last_name = [dictionary ro_stringForKey:kCloudantDSSchemaItemLast_name];
    
    self.gender = [dictionary ro_stringForKey:kCloudantDSSchemaItemGender];
    
    self.first_name = [dictionary ro_stringForKey:kCloudantDSSchemaItemFirst_name];
    
    self.email = [dictionary ro_stringForKey:kCloudantDSSchemaItemEmail];
    
    self.birth_date = [dictionary ro_stringForKey:kCloudantDSSchemaItemBirth_date];
    
    self.image = [dictionary ro_stringForKey:kCloudantDSSchemaItemImage];
}

- (id)identifier {
    
    return self.rev.docId;
}

- (CDTDocumentRevision *)rev {
    
    if (!_rev) {
        
        _rev = [CDTDocumentRevision revision];
    }
    return _rev;
}

- (void)setRev:(CDTDocumentRevision *)rev {

    _rev = rev;
    [self updateWithDictionary:rev.body];
}

- (void)setLast_name:(NSString *)last_name {

    _last_name = last_name;
    self.rev.body[kCloudantDSSchemaItemLast_name] = last_name;
}

- (void)setGender:(NSString *)gender {

    _gender = gender;
    self.rev.body[kCloudantDSSchemaItemGender] = gender;
}

- (void)setFirst_name:(NSString *)first_name {

    _first_name = first_name;
    self.rev.body[kCloudantDSSchemaItemFirst_name] = first_name;
}

- (void)setEmail:(NSString *)email {

    _email = email;
    self.rev.body[kCloudantDSSchemaItemEmail] = email;
}

- (void)setBirth_date:(NSString *)birth_date {

    _birth_date = birth_date;
    self.rev.body[kCloudantDSSchemaItemBirth_date] = birth_date;
}

- (void)setImage:(NSString *)image {

    _image = image;
    self.rev.body[kCloudantDSSchemaItemImage] = image;
}

@end

