//
//  HeavyDutyAppDelegate.h
//  HeavyDuty
//
//  Created by Ben Bruscella on 29/05/11.
//  Copyright 2011 SPK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeavesViewController.h"
#import "LeavesView.h"

@class HeavyDutyViewController;

@interface HeavyDutyAppDelegate : NSObject <UIApplicationDelegate> {
	NSArray *images;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet HeavyDutyViewController *viewController;

@end
