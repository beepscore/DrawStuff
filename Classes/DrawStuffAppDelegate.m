//
//  DrawStuffAppDelegate.m
//  DrawStuff
//
//  Created by Steve Baker on 3/25/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "DrawStuffAppDelegate.h"
#import "DrawStuffViewController.h"

@implementation DrawStuffAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
