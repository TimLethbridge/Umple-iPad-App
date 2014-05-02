//
//  UmpleMethod.h
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UmpleMethod : NSObject

@property(nonatomic, strong) NSString* visibility;
@property(nonatomic, strong) NSString* type;
@property(nonatomic, strong) NSString* name;

//Do more research
@property(nonatomic, strong) NSMutableArray* parameters;


-(id) initWithDictionary:(NSDictionary*)attrDictionary;
-(NSDictionary*) json;

@end
