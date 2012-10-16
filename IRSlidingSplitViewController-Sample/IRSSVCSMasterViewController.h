//
//  IRSSVCSMasterViewController.h
//  IRSlidingSplitViewController-Sample
//
//  Created by Chandler Abraham on 10/14/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IRVerticalSlidingSplitViewController.h"

@interface IRSSVCSMasterViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIViewController) NSArray *viewControllers;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet IRVerticalSlidingSplitViewController *slidingSplitViewController;

@end
