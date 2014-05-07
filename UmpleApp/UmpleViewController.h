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
#import "UmpleModelMenuViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "UmpleClassEditorViewController.h"

@interface UmpleViewController : UIViewController <UIScrollViewDelegate, UmpleModelMenuViewControllerDelegate, UmpleClassEditorViewControllerDelegate>

@property (nonatomic, strong) NSMutableDictionary* umpleClasses;
@property (nonatomic, strong) NSMutableDictionary* umpleAssociations;
@property (nonatomic, strong) NSMutableDictionary* umpleClassesToAssociations;
@property (nonatomic, strong) UIView* umpleView;
@property (strong, nonatomic) IBOutlet UIScrollView *umpleScrollView;
@property (strong, nonatomic) IBOutlet UIScrollView *umpleMenuScrollView;

//Draws the association connection
@property (strong, nonatomic) UIView* umpleAssocView;

@property (strong, nonatomic) UINavigationController* umpleClassEditorNavController;
@property (strong, nonatomic) UmpleClassEditorViewController* umpleClassEditorViewController;
@property (strong, nonatomic) UIPopoverController* umpleClassPopoverController;
@end
