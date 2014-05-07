//
//  UmpleClass.h
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UmpleAttribute.h"
#import "UmpleMethod.h"

@interface UmpleClass : UIButton

@property (nonatomic, strong) NSString* class_id;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) CGRect position;
@property (nonatomic, strong) NSMutableArray* attributes;
@property (nonatomic, strong) NSMutableArray* methods;
@property (nonatomic, strong) NSString* displayColor;

-(id) initWithDictionary:(NSDictionary*) umpleDict;
-(void) update;
-(NSDictionary*) json;
-(void) constructClassModel;
-(void) updateClassModel;
@end
