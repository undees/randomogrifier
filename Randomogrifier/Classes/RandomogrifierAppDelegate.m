//
//  RandomogrifierAppDelegate.m
//  Randomogrifier
//
//  Created by Ian Dees on 8/3/09.
//  Copyright Ian Dees 2009. All rights reserved.
//

#import "RandomogrifierAppDelegate.h"
#import "RandomogrifierViewController.h"

#ifdef BROMINET_ENABLED
	#import "ScriptRunner.h"
	#import "MyHTTPConnection.h"
	#import "HTTPServer.h"
#endif

@implementation RandomogrifierAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
#ifdef BROMINET_ENABLED
	// Listen for incoming instructions coming from the GUI tests.
	
	httpServer = [HTTPServer new];
	[httpServer setName:@"the iPhone"];
	[httpServer setType:@"_http._tcp."];
	[httpServer setConnectionClass:[MyHTTPConnection class]];
	[httpServer setPort:50000];
	
	ScriptRunner *runner = [[[ScriptRunner alloc] init] autorelease];
	[MyHTTPConnection setSharedObserver:runner];
	
	NSError *error;
	if(![httpServer start:&error])
	{
		NSLog(@"Error starting HTTP Server: %@", error);
	}
#endif
}


- (void)dealloc {
	[httpServer release];
    [viewController release];
    [window release];
    [super dealloc];
}


@end
