//
//  IRSSVCSMasterViewController.m
//  IRSlidingSplitViewController-Sample
//
//  Created by Chandler Abraham on 10/14/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "IRSSVCSMasterViewController.h"

@interface IRSSVCSMasterViewController () <UITableViewDelegate, UITableViewDataSource>
@property NSArray *titleArray;
@end

@implementation IRSSVCSMasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView reloadData];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.viewControllers count];
    
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * const identifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    
    
    cell.textLabel.text = NSStringFromClass([[self.viewControllers objectAtIndex:indexPath.row] class]);
    cell.textLabel.text = [[self.viewControllers objectAtIndex:indexPath.row] title];
    return cell;
    
    
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIViewController *viewController = [self.viewControllers objectAtIndex:indexPath.row];
    NSLog(@"select %@", viewController);

    [self.slidingSplitViewController setShowingMasterViewController:YES animated:YES completion:^(BOOL didFinish) {
        [self.slidingSplitViewController setDetailViewController:viewController animated:YES completion:^(BOOL didFinish) {
            [self.slidingSplitViewController setShowingMasterViewController:NO animated:YES completion:nil];
        }];
        
    }];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
 
}

@end
