//
//  UmpleAttribute.h
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UmpleAttribute : NSObject

@property (nonatomic, strong) NSString* type;
@property (nonatomic, strong) NSString* name;

-(id) initWithDictionary:(NSDictionary*)attrDictionary;

-(NSDictionary*) json;

@end
