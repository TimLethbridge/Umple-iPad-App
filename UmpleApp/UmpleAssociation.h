//
//  UmpleAssociation.h
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UmpleClass.h"
#import <QuartzCore/QuartzCore.h>

@interface UmpleAssociation : UIView


@property(nonatomic, assign) CGRect offsetOnePosition;
@property(nonatomic, assign) CGRect offsetTwoPosition;
@property(nonatomic, strong) NSString* association_id;
@property(nonatomic, strong) UmpleClass* classOneId;
@property(nonatomic, strong) UmpleClass* classTwoId;
@property(nonatomic, strong) NSString* multiplicityOne;
@property(nonatomic, strong) NSString* multiplicityTwo;
@property(nonatomic, strong) NSString* name;
@property(nonatomic, strong) NSString* roleOne;
@property(nonatomic, strong) NSString* roleTwo;
@property(nonatomic, strong) NSNumber* isLeftNavigable;
@property(nonatomic, strong) NSNumber* isRightNavigable;
@property(nonatomic, strong) UIBezierPath *associationPath;

- (id)initWithDictionary:(NSDictionary*)assocDictionary UmpleCasses:(NSMutableDictionary*) umpleClasses Frame:(CGRect) frame;
-(NSDictionary*) json;

@end
