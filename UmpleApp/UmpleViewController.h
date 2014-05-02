//
//  UmpleViewController.h
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UmpleClass.h"
#import "UmpleAssociation.h"
#import <QuartzCore/QuartzCore.h>

@interface UmpleViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong) NSMutableDictionary* umpleClasses;
@property (nonatomic, strong) NSMutableDictionary* umpleAssociations;
@property (nonatomic, strong) NSMutableDictionary* umpleClassesToAssociations;
@property (nonatomic, strong) UIScrollView* umpleScrollView;
@property (nonatomic, strong) UIView* umpleView;

@end
