//
//  CloudantDSSchemaItem.h
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "ROCloudantItem.h"
#import "ROModel.h"
#import "CloudantDSSchemaItemKeys.h"

@class CDTDocumentRevision;

@interface CloudantDSSchemaItem : NSObject <ROModelDelegate, ROCloudantItem>

@property (nonatomic, strong) NSString *last_name;

@property (nonatomic, strong) NSString *gender;

@property (nonatomic, strong) NSString *first_name;

@property (nonatomic, strong) NSString *email;

@property (nonatomic, strong) NSString *birth_date;

@property (nonatomic, strong) NSString *image;

@property (nonatomic, strong, readonly) CDTDocumentRevision *rev;

@end
