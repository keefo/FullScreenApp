//
//  FullScreenAppDelegate.m
//  FullScreenApp
//
//  Created by Keefo on 28/10/10.
//  Copyright 2010 Beyondcow. All rights reserved.
//

#import "FullScreenAppDelegate.h"


@implementation FullScreenAppDelegate
- (void)awakeFromNib
{
	if (CGDisplayCapture( kCGDirectMainDisplay ) != kCGErrorSuccess) {
        NSLog( @"Couldn't capture the main display!" );
    }

	window = [[FullScreenWindow alloc] initWithContentRect:[[NSScreen mainScreen] frame]
												 styleMask:NSBorderlessWindowMask
												   backing:NSBackingStoreBuffered
													 defer:NO screen:[NSScreen mainScreen]];
	
	[window setLevel:NSMainMenuWindowLevel + 1];
    [window setBackgroundColor:[NSColor blackColor]];
    [window makeKeyAndOrderFront:nil];
}

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
}
- (void)applicationWillTerminate:(NSNotification *)notification
{
	[window orderOut:self];
	if (CGDisplayRelease( kCGDirectMainDisplay ) != kCGErrorSuccess) {
		NSLog( @"Couldn't release the display!" );
	}
}

@end
