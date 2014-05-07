//
//  UmpleModelMenuViewController.h
//  UmpleApp
//
//  Created by Charles Wang on 5/5/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UmpleModelMenuViewControllerDelegate <NSObject>

-(void) addUmpleClassSelected:(UITableViewController*) tableViewController;

@end

@interface UmpleModelMenuViewController : UITableViewController

@property (nonatomic, strong) id <UmpleModelMenuViewControllerDelegate> delegate;
@property (nonatomic, strong) UIPopoverController* popoverController;

@end
