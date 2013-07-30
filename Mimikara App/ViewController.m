//
//  ViewController.m
//  mimikara App
//
//  Created by jaol@widex.com on 5/15/13.
//  Copyright (c) 2013 Widex. All rights reserved.
//

#import "ViewController.h"

static void *ViewControllerStatusObservationContext = &ViewControllerStatusObservationContext;
@implementation ViewController;
@synthesize mPlaybackView, queuePlayer;
@synthesize animationTimer;
//@synthesize animationCompleted;

- (void)dealloc
{
    [self.view.layer removeAllAnimations];
    [mPlaybackView release];
    [queuePlayer release];
    
    [_soundPauseTimer release];
    [_soundPauseTimer invalidate];
    [ScreenSaverSound pause];
    [ScreenSaverSound release];
    [super dealloc];
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    playTimerScreensaver=1;
    [self hidebobles];
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPhone Simulator"])
    {
        firstVideoPath = [[NSBundle mainBundle] pathForResource:@"iPhone_video" ofType:@"mp4"];

        
    }else
        if([deviceType isEqualToString:@"iPad"]|| [deviceType isEqualToString:@"iPad Simulator"])
        {
           firstVideoPath = [[NSBundle mainBundle] pathForResource:@"iPad_video" ofType:@"mp4"];

        };
    
    AVPlayerItem *firstVideoItem = [AVPlayerItem playerItemWithURL:[NSURL fileURLWithPath:firstVideoPath]];
    
    
    self.queuePlayer = [AVQueuePlayer queuePlayerWithItems:[NSArray arrayWithObjects:firstVideoItem, nil]];
    
    
    queuePlayer.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playerItemDidReachEnd:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:[queuePlayer currentItem]];
    
   // 
    
[self.mPlaybackView setPlayer:self.queuePlayer];
    
//[self.queuePlayer play];
    
         
    // [queuePlayer addObserver:self forKeyPath:@"status" options:0 context:ViewControllerStatusObservationContext];
    
    
 [self.queuePlayer play];

     [self playPipSound:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(startVideo) name:UIApplicationDidBecomeActiveNotification object:[UIApplication sharedApplication]];
}

- (void)applicationDidBecomeActive:(UIApplication *)application{


}

-(void)startVideo{
   //NSLog(@"applicationDidBecomeActive: %i ",self.queuePlayer.status);
  

     [self.queuePlayer play];

    
};

-(void)viewDidAppear:(BOOL)animated{
  // NSLog(@"self.queuePlayer.status: %i ",self.queuePlayer.status);
     
   /*
    if(self.queuePlayer.status == pause()){
   [self.queuePlayer play];
    }
    */
    [self playAnimationSeq];
    };

-(void)playPipSound:(NSTimer *)soundPauseTimer{
   // NSLog(@"checkpoint screensaver:%i",playTimerScreensaver);
    if(playTimerScreensaver==1){
   // NSLog(@"playing sound");
        
      
        //NSLog(@"self.queuePlayer.status: %i ",self.queuePlayer.status);

        if(_soundPauseTimer){
           // NSLog(@"played sound?, release me!!!");
        
            [_soundPauseTimer invalidate];
            _soundPauseTimer = nil;
            [_soundPauseTimer release];
            
           // NSLog(@"still active? %@",_soundPauseTimer);

            [ScreenSaverSound release];
        }
    NSString *pathtosoundFile = [[NSBundle mainBundle] pathForResource:@"Chickens_Mulitple_Mix_Peeps_pauseskaerm" ofType:@"mp3"];
    ScreenSaverSound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathtosoundFile] error:NULL];
    ScreenSaverSound.delegate = self;
    ScreenSaverSound.volume = .5;
    [ScreenSaverSound play];

         playTimerScreensaver = 0;
    }
   
}
- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)success {
    if (success) {

    _soundPauseTimer = [NSTimer scheduledTimerWithTimeInterval: 7.0
                                                      target: self
                                                    selector:@selector(playPipSound:)
                                                    userInfo: nil repeats:NO];
        //[self playPipSound];
        // last sound finished successfully, play the next sound
        playTimerScreensaver++;
          } else {
        // something went wrong, show an error?
    }
}

/*
 - (void)observeValueForKeyPath:(NSString*) path ofObject:(id)object change:(NSDictionary*)change context:(void*)context
 {
 if (queuePlayer.status == AVPlayerStatusReadyToPlay) {
 [self.mPlaybackView setPlayer:self.queuePlayer];
 [self.queuePlayer play];
 
 }
 }
 */



-(void)hidebobles{
    self.spebob01.alpha = 0;
    self.spebob02.alpha = 0;
    self.spebob03.alpha = 0;
    self.spebob04.alpha = 0;
    self.spebob05.alpha = 0;
    self.spebob06.alpha = 0;
    self.spebob07.alpha = 0;
    
    self.label01.alpha = 0;
    self.label02.alpha = 0;
    self.label03.alpha = 0;
    self.label04.alpha = 0;
    self.label05.alpha = 0;
    self.label06.alpha = 0;
    self.label07.alpha = 0;
}
-(void)playAnimationSeq
{
   /*
    [UIView animateWithDuration:2.0 animations:^{
            } completion:^(BOOL finished) {
        [UIView animateWithDuration:2.0 animations:^{
            self.spebob02.alpha = 1;
        } completion:^(BOOL finished) {
            self.spebob01.alpha = 0;
        }];
    }];
*/
       // NSLog(@"animationCompleted: %i",animationCompleted);
   // NSLog(@"playAnimationSeq");
    //animationCompleted = TRUE;
    [UIView animateWithDuration:2 delay:2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.spebob01.alpha = 1;
        self.label01.alpha = 1;
    } completion:^(BOOL finished) {
         [UIView animateWithDuration:2 delay:4 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.spebob05.alpha = 1;
            self.label05.alpha = 1;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1 animations:^{
                self.spebob01.alpha = 0;
                self.label01.alpha = 0;
            }];
            
            [UIView animateWithDuration:2 delay:4 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                self.spebob02.alpha = 1;
                self.label02.alpha = 1;
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:1 animations:^{
                self.spebob05.alpha = 0;
                    self.label05.alpha = 0;
                }];
                [UIView animateWithDuration:2 delay:4 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                    self.spebob04.alpha = 1;
                     self.label04.alpha = 1;
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:1 animations:^{
                    self.spebob02.alpha = 0;
                        self.label02.alpha = 0;
                    }];
                    [UIView animateWithDuration:2 delay:4 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                        self.spebob06.alpha = 1;
                        self.label06.alpha = 1;
                    } completion:^(BOOL finished) {
                        [UIView animateWithDuration:1 animations:^{
                        self.spebob04.alpha = 0;
                            self.label04.alpha = 0;
                        }];
                        [UIView animateWithDuration:2 delay:4 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                            self.spebob03.alpha = 1;
                            self.label03.alpha = 1;
                        } completion:^(BOOL finished) {
                            [UIView animateWithDuration:1 animations:^{
                            self.spebob06.alpha = 0;
                                self.label06.alpha = 0;
                            }];
                            [UIView animateWithDuration:2 delay:4 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                                self.spebob07.alpha = 1;
                                self.label07.alpha = 1;
                            } completion:^(BOOL finished) {
                               [UIView animateWithDuration:1 animations:^{
                                   self.spebob03.alpha = 0;
                                   self.label03.alpha = 0;
                               }completion:^(BOOL finished) {

                                  [UIView animateWithDuration:2 animations:^{
                                      self.spebob07.alpha = 0;
                                      self.label07.alpha = 0;
                                      //NSLog(@"last animation done, waiting for loop...");
                                  }];
                               }];
                                   
                            }];
                        }];
                    }];
                }];
            }];
        }];
    }];
}
-(void)toggleanimation{

    [self playAnimationSeq];
   // animationCompleted = FALSE;
}
- (IBAction)gotoSoundPage:(id)sender {
    [self.queuePlayer pause];
    
    
        //    NSLog(@"played sound?, release me!!!");
        
        [_soundPauseTimer invalidate];
        _soundPauseTimer = nil;
        [_soundPauseTimer release];
        
      //  NSLog(@"still active? %@",_soundPauseTimer);
        
        [ScreenSaverSound release];

       [self performSegueWithIdentifier:@"gotoSound" sender:self];
}

- (void)playerItemDidReachEnd:(NSNotification *)notification {
    AVPlayerItem *p = [notification object];
    [p seekToTime:kCMTimeZero];
    [self toggleanimation];

}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

@end
