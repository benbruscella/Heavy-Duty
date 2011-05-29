    //
//  ExampleViewController.m
//  Leaves
//
//  Created by Tom Brow on 4/18/10.
//  Copyright 2010 Tom Brow. All rights reserved.
//

#import "ImageExampleViewController.h"
#import "Utilities.h"

@implementation ImageExampleViewController

- (id)init {
    if (self = [super init]) {
		images = [[NSArray alloc] initWithObjects:
				  [UIImage imageNamed:@"hdcs_issue_115a.jpg"],
				  [UIImage imageNamed:@"hdcs_issue_115b.jpg"],
				  [UIImage imageNamed:@"hdcs_issue_116a.jpg"],
				  [UIImage imageNamed:@"hdcs_issue_116b.jpg"],
				  [UIImage imageNamed:@"issue_110a.jpg"],
				  [UIImage imageNamed:@"issue_110b.jpg"],
				  [UIImage imageNamed:@"issue_111a.jpg"],
				  [UIImage imageNamed:@"issue_111c.jpg"],
				  [UIImage imageNamed:@"issue_112a.jpg"],
				  [UIImage imageNamed:@"issue_112b.jpg"],
				  [UIImage imageNamed:@"issue_112c.jpg"],
				  [UIImage imageNamed:@"issue_113a.jpg"],
				  [UIImage imageNamed:@"issue_113b.jpg"],
				  [UIImage imageNamed:@"issue_114a.jpg"],
				  [UIImage imageNamed:@"issue_114b.jpg"],
				  [UIImage imageNamed:@"issue_114c.jpg"],
				  [UIImage imageNamed:@"issue_24.jpg"],
				  [UIImage imageNamed:@"issue_26.jpg"],
				  [UIImage imageNamed:@"issue_27.jpg"],
				  [UIImage imageNamed:@"issue_31.jpg"],
				  [UIImage imageNamed:@"issue_35.jpg"],
				  [UIImage imageNamed:@"issue_37.jpg"],
				  [UIImage imageNamed:@"issue_39.jpg"],
				  [UIImage imageNamed:@"issue_40.jpg"],
				  [UIImage imageNamed:@"issue_41b.jpg"],
				  [UIImage imageNamed:@"issue_42.jpg"],
				  [UIImage imageNamed:@"issue_43.jpg"],
				  [UIImage imageNamed:@"issue_47.jpg"],
				  [UIImage imageNamed:@"issue_61.jpg"],
				  nil];
    }
    return self;
}

- (void)dealloc {
	[images release];
    [super dealloc];
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
