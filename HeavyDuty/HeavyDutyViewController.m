//
//  HeavyDutyViewController.m
//  HeavyDuty
//
//  Created by Ben Bruscella on 29/05/11.
//  Copyright 2011 SPK. All rights reserved.
//

#import "HeavyDutyViewController.h"
#import "Utilities.h"

@implementation HeavyDutyViewController

- (void)dealloc
{
    [super dealloc];
}


- (id)init {
    if (self = [super init]) {
		images = [[NSArray alloc] initWithObjects:
				  [UIImage imageNamed:@"hdcs_issue_115a.jpg"],
				  [UIImage imageNamed:@"hdcs_issue_115b.jpg"],
				  [UIImage imageNamed:@"hdcs_issue_116a.jpg"],
				  [UIImage imageNamed:@"hdcs_issue_116b.jpg"],
				  [UIImage imageNamed:@"issue_24.jpg"],
				  [UIImage imageNamed:@"issue_26.jpg"],
				  [UIImage imageNamed:@"issue_27.jpg"],
                  
                  
                  
				  nil];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

#pragma mark LeavesViewDataSource methods

- (NSUInteger) numberOfPagesInLeavesView:(LeavesView*)leavesView {
	return images.count;
}

- (void) renderPageAtIndex:(NSUInteger)index inContext:(CGContextRef)ctx {
	UIImage *image = [images objectAtIndex:index];
	CGRect imageRect = CGRectMake(0, 0, image.size.width, image.size.height);
	CGAffineTransform transform = aspectFit(imageRect,
											CGContextGetClipBoundingBox(ctx));
	CGContextConcatCTM(ctx, transform);
	CGContextDrawImage(ctx, imageRect, [image CGImage]);
}
@end
