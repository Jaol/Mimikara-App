//
//  ELCUIApplication.m
//  Mimikara App
//
//  Created by Jakob Højgård Olsen on 6/3/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.

#import "ELCUIApplication.h"


@implementation ELCUIApplication

- (void)sendEvent:(UIEvent *)event {
	[super sendEvent:event];
	
	// Fire up the timer upon first event
	if(!_idleTimer) {
		[self resetIdleTimer];
	}
    
	
	// Check to see if there was a touch event
    NSSet *allTouches = [event allTouches];
    if ([allTouches count] > 0) {
        UITouchPhase phase = ((UITouch *)[allTouches anyObject]).phase;
        if (phase == UITouchPhaseBegan) {
            [self resetIdleTimer];         
		}
    }
}

- (void)resetIdleTimer 
{
    
    if (_idleTimer) {
        [_idleTimer invalidate];
        [_idleTimer release];
    }
    if(batchTimer) {
        [batchTimer invalidate];
        [batchTimer release];

    }
	
	// Schedule a timer to fire in kApplicationTimeoutInMinutes * 60
	int timeout = kApplicationTimeoutInMinutes * 10;
    int batchTimeout = kApplicationTimeoutInMinutesBatch * 8;
    _idleTimer = [[NSTimer scheduledTimerWithTimeInterval:timeout
                                                   target:self
												selector:@selector(idleTimerExceeded) 
												userInfo:nil 
												 repeats:NO] retain];

    
    batchTimer = [[NSTimer scheduledTimerWithTimeInterval:batchTimeout
                                                   target:self
                                                 selector:@selector(bacthTimerExceeded)
                                                 userInfo:nil
           
                                                  repeats:NO] retain];
    
    }

- (void)idleTimerExceeded {
	/* Post a notification so anyone who subscribes to it can be notified when
	 * the application times out */ 
	[[NSNotificationCenter defaultCenter]
	 postNotificationName:kApplicationDidTimeoutNotification object:nil];
}

- (void)bacthTimerExceeded {
	/* Post a notification so anyone who subscribes to it can be notified when
	 * the application times out */
	[[NSNotificationCenter defaultCenter]
	 postNotificationName:kApplicationDidTimeoutNotificationBatch object:nil];
}

- (void) dealloc {
	[_idleTimer release];
	[batchTimer release];
    [super dealloc];
}

@end
