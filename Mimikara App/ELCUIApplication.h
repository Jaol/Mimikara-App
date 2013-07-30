//
//  ELCUIApplication.h
//  Mimikara App
//
//  Created by Jakob Højgård Olsen on 6/3/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController_play.h"
// # of minutes before application times out
#define kApplicationTimeoutInMinutes 5
#define kApplicationTimeoutInMinutesBatch 1
// Notification that gets sent when the timeout occurs
#define kApplicationDidTimeoutNotification @"ApplicationDidTimeout"
#define kApplicationDidTimeoutNotificationBatch @"showBatch"
#define kApplicationDidTimeoutNotificationHIDE @"hideGFX"
/**
 * This is a subclass of UIApplication with the sendEvent: method 
 * overridden in order to catch all touch events.
 */

@interface ELCUIApplication : UIApplication {
	NSTimer *_idleTimer;
    NSTimer *batchTimer;
}

/**
 * Resets the idle timer to its initial state. This method gets called
 * every time there is a touch on the screen.  It should also be called
 * when the user correctly enters their pin to access the application.
 */
- (void)resetIdleTimer;

@end
