//
//  AppDelegate.h
//  Mimikara App
//
//  Created by Jakob Højgård Olsen on 6/3/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Flurry/Flurry.h"
#import <SystemConfiguration/SystemConfiguration.h>
#import "TestFlight.h"
#import "ViewController.h"
#import "WEBViewController.h"
//@class AVPlayerDemoPlaybackView;
@interface AppDelegate : UIResponder <UIApplicationDelegate>{
 UIWindow *window;
 ViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) IBOutlet ViewController *viewController;
@end
