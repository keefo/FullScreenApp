//
//  FullScreenWindow.m
//  FullScreenApp
//
//  Created by Keefo on 28/10/10.
//  Copyright 2010 Beyondcow. All rights reserved.
//

#import "FullScreenWindow.h"


@implementation FullScreenWindow

- (BOOL)canBecomeKeyWindow
{
	//Override this method to make sure our window get keyboard event;
	return YES;
}

@end
