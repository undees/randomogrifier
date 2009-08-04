//
//  RandomogrifierAppDelegate.h
//  Randomogrifier
//
//  Created by Ian Dees on 8/3/09.
//  Copyright Ian Dees 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RandomogrifierViewController;

@interface RandomogrifierAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RandomogrifierViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RandomogrifierViewController *viewController;

@end

