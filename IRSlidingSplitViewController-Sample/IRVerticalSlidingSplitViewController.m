//
//  IRVerticalSlidingSplitViewController.m
//  IRSlidingSplitViewController-Sample
//
//  Created by Evadne Wu on 7/3/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "IRVerticalSlidingSplitViewController.h"

@implementation IRVerticalSlidingSplitViewController

- (CGRect) rectForDetailView {

	if (self.showingMasterViewController)
		return CGRectOffset(self.view.bounds, (CGRectGetWidth(self.view.bounds) - 80), 0.0f);
	
	return self.view.bounds;
}

- (IBAction) handleToggle:(id)sender {
    
    [self setShowingMasterViewController:!self.showingMasterViewController animated:YES completion:nil];
    
}

@end
