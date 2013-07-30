//
//  ViewController.h
//  Mimikara App
//
//  Created by Jakob Højgård Olsen on 6/3/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreMedia/CoreMedia.h>
#import "AVPlayerDemoPlaybackView.h"
#import <MediaPlayer/MediaPlayer.h>
#import <QuartzCore/QuartzCore.h>

@class AVPlayer;
@class AVPlayerDemoPlaybackView;

@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{
    AVQueuePlayer *queuePlayer;
    IBOutlet AVPlayerDemoPlaybackView *mPlaybackView;
    AVAudioPlayer *ScreenSaverSound;
    int playTimerScreensaver;
    NSString *firstVideoPath;
    //NSTimer *soundPauseTimer;
   // NSTimer *animationTimer;
    //int animationCompleted;
    }
@property (readwrite, retain) AVQueuePlayer *queuePlayer;
@property (nonatomic, strong) NSTimer *soundPauseTimer;
@property   (nonatomic, strong)NSTimer  *animationTimer;
@property (nonatomic, retain) IBOutlet AVPlayerDemoPlaybackView *mPlaybackView;
//- (void)observeValueForKeyPath:(NSString*) path ofObject:(id)object change:(NSDictionary*)change context:(void*)context;
- (IBAction)gotoSoundPage:(id)sender;
-(void)startVideo;
@property int *animationCompleted;
@property (strong, nonatomic) IBOutlet UILabel *label01;
@property (strong, nonatomic) IBOutlet UILabel *label02;
@property (strong, nonatomic) IBOutlet UILabel *label03;
@property (strong, nonatomic) IBOutlet UILabel *label04;
@property (strong, nonatomic) IBOutlet UILabel *label05;
@property (strong, nonatomic) IBOutlet UILabel *label06;
@property (strong, nonatomic) IBOutlet UILabel *label07;
@property (nonatomic, retain) IBOutlet UIImageView *spebob01;
@property (nonatomic, retain) IBOutlet UIImageView *spebob02;
@property (nonatomic, retain) IBOutlet UIImageView *spebob03;
@property (nonatomic, retain) IBOutlet UIImageView *spebob04;
@property (nonatomic, retain) IBOutlet UIImageView *spebob05;
@property (nonatomic, retain) IBOutlet UIImageView *spebob06;
@property (nonatomic, retain) IBOutlet UIImageView *spebob07;

@end
