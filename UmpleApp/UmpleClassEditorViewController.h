//
//  UmpleClassEditorViewController.h
//  UmpleApp
//
//  Created by Charles Wang on 5/6/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UmpleClass.h"
#import "UmpleAttribute.h"
#import "UmpleMethod.h"

@protocol UmpleClassEditorViewControllerDelegate <NSObject>

-(void) finishedEditingClass:(UmpleClass*) umpleClass;

@end

@interface UmpleClassEditorViewController : UITableViewController <UITextFieldDelegate>

@property id <UmpleClassEditorViewControllerDelegate> delegate;

@property (strong, nonatomic) UmpleClass* umpleClass;
@property (strong, nonatomic) UmpleClass* umpleClassCopy;

@property (strong, nonatomic) NSMutableArray* umpleNewAttributes;
@property (strong, nonatomic) NSMutableArray* umpleNewMethods;

@property (strong, nonatomic) NSMutableDictionary* cacheUmpleAttributes;
@end
