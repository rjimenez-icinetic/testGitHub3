//
//  ProductsDS.m
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "NSString+RO.h"
#import "ProductsDS.h"
#import "ProductsDSItem.h"
#import "ROUtils.h"

@implementation ProductsDS

static NSString *const kUrl             = @"https://baked-devel-ibm.herokuapp.com";
static NSString *const kApiKey          = @"cQqRsqIA";
static NSString *const kResourceId      = @"/app/57e9362395080f0300d8a939/r/productsDS";

- (instancetype)init {

    self = [super initWithUrlString:kUrl 
                             apiKey:kApiKey 
                         resourceId:kResourceId 
                       objectsClass:[ProductsDSItem class]];
    if (self) {
    
        self.delegate = self;
    }
    return self;
}

- (NSString *)imagePath:(NSString *)path {
  
    if ([path isUrl]) {
        return path;
    }

    return [NSString stringWithFormat:@"https://baked-devel-ibm.herokuapp.com/app/57e9362395080f0300d8a939%@?apikey=%@", path, self.apiKey];
}

#pragma mark - <ROSearchable>

- (NSArray *)searchableFields {

    return @[kProductsDSItemName, kProductsDSItemDescription, kProductsDSItemCategory, kProductsDSItemPrice, kProductsDSItemRating, kProductsDSItemId];
}

#pragma mark - <ROCRUDServiceDelegate>

- (void)itemsWithParams:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    [self.restClient get:self.resourceId 
                  params:params 
           responseClass:self.objectsClass
            successBlock:successBlock 
            failureBlock:failureBlock];
}

- (void)itemWithIdentifier:(NSString *)identifier successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSString *service = [NSString stringWithFormat:@"%@/%@", self.resourceId, identifier];
    [self.restClient get:service 
                  params:nil 
           responseClass:self.objectsClass 
            successBlock:^(id response) {
              
                [[[ROUtils sharedInstance] analytics] logAction:@"read"
                                                         entity:@"ProductsDSItem"
                                                     identifier:identifier];
                if (successBlock) {
                    
                    successBlock(response);
                }
                
            } failureBlock:failureBlock];
}

- (void)createItemWithParams:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSMutableDictionary *dicNoImages = [NSMutableDictionary new];
    NSMutableDictionary *dicImages = [NSMutableDictionary new];
    
    NSArray *keys = [params allKeys];
    
    for (NSString *key in keys) {
        
        if ([[params valueForKey:key] isKindOfClass:[NSData class]]) {
            
            [dicImages setValue:[params valueForKey:key] forKey:key];

        } else {
            
            [dicNoImages setValue:[params valueForKey:key] forKey:key];
        }
    }
    
    [self.restClient post:self.resourceId 
                   params:dicNoImages 
                    datas:dicImages 
                 mimeType:@"image/jpeg"
            responseClass:self.objectsClass 
             successBlock:^(id response) {
                 
                 [[[ROUtils sharedInstance] analytics] logAction:@"created"
                                                          entity:@"ProductsDSItem"];
                 if (successBlock) {
                     
                     successBlock(response);
                 }
                 
             } failureBlock:failureBlock];
}

- (void)updateItemWithIdentifier:(NSString *)identifier params:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSString *service = [NSString stringWithFormat:@"%@/%@", self.resourceId, identifier];
    NSMutableDictionary *dicNoImages = [NSMutableDictionary new];
    NSMutableDictionary *dicImages = [NSMutableDictionary new];
    
    NSArray *keys = [params allKeys];
    
    for (NSString *key in keys) {
        
        if ([[params valueForKey:key] isKindOfClass:[NSData class]]) {
            
            [dicImages setValue:[params valueForKey:key] forKey:key];
            
        } else {
            
            [dicNoImages setValue:[params valueForKey:key] forKey:key];
        }
    }
    
    [self.restClient put:service 
                   params:dicNoImages 
                    datas:dicImages 
                 mimeType:@"image/jpeg"
            responseClass:self.objectsClass 
             successBlock:^(id response) {
                
                [[[ROUtils sharedInstance] analytics] logAction:@"updated"
                                                         entity:@"ProductsDSItem"
                                                     identifier:identifier];
                if (successBlock) {
                    
                    successBlock(response);
                }
                
            } failureBlock:failureBlock];
    
}

- (void)deleteItemWithIdentifier:(NSString *)identifier successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSString *service = [NSString stringWithFormat:@"%@/%@", self.resourceId, identifier];
    [self.restClient delete:service 
                     params:nil 
              responseClass:nil 
               successBlock:^(id response) {
                   
                   [[[ROUtils sharedInstance] analytics] logAction:@"deleted"
                                                            entity:@"ProductsDSItem"
                                                        identifier:identifier];
                   if (successBlock) {
                       
                       successBlock(response);
                   }
                   
               } failureBlock:failureBlock];
}

- (void)deleteItemsWithIdentifiers:(NSArray *)identifiers successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSString *service = [NSString stringWithFormat:@"%@/deleteByIds", self.resourceId];
    [self.restClient post:service
                   params:identifiers 
            responseClass:nil
             successBlock:^(id response) {
                 
                 [[[ROUtils sharedInstance] analytics] logAction:@"deleted"
                                                          entity:@"ProductsDSItem"
                                                      identifier:[identifiers componentsJoinedByString:@", "]];
                 if (successBlock) {
                     
                     successBlock(response);
                 }
                 
             } failureBlock:failureBlock];
}

@end

