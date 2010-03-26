//
//  DrawStuffAppDelegate.h
//  DrawStuff
//
//  Created by Steve Baker on 3/25/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DrawStuffViewController;

@interface DrawStuffAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DrawStuffViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DrawStuffViewController *viewController;

@end

