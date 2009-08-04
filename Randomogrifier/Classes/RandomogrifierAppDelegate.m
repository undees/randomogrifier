//
//  RandomogrifierAppDelegate.m
//  Randomogrifier
//
//  Created by Ian Dees on 8/3/09.
//  Copyright Ian Dees 2009. All rights reserved.
//

#import "RandomogrifierAppDelegate.h"
#import "RandomogrifierViewController.h"

@implementation RandomogrifierAppDelegate

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
