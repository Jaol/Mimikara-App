//
//  ViewController_play.h
//  Mimikara App
//
//  Created by Jakob Højgård Olsen on 6/3/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PNGAnimationView.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import "ELCUIApplication.h"

@interface ViewController_play : UIViewController <AVAudioPlayerDelegate>{
    PNGAnimationView *animationView1;
    PNGAnimationView *animationView2;
    PNGAnimationView *animationView3;
    PNGAnimationView *animationView4;
    
     UIButton *currentlySelectedButton;
    
    
    IBOutlet UIImageView *curve01;
    IBOutlet UIImageView *curve02;
    IBOutlet UIImageView *curve03;
    IBOutlet UIImageView *curve04;
    IBOutlet UIImageView *curve05;
    IBOutlet UIImageView *curve06;
    IBOutlet UIImageView *curve07;
    
    IBOutlet UIImageView *spebob01;
    IBOutlet UILabel *spebobLabel01;
    IBOutlet UIImageView *spebob02;
    IBOutlet UILabel *spebobLabel02;
    IBOutlet UIImageView *spebob03;
    IBOutlet UILabel *spebobLabel03;
    IBOutlet UIImageView *spebob04;
    IBOutlet UILabel *spebobLabel04;
    IBOutlet UIImageView *spebob05;
    IBOutlet UILabel *spebobLabel05;
    IBOutlet UIImageView *spebob06;
    IBOutlet UILabel *spebobLabel06;
    IBOutlet UIImageView *spebob07;
    IBOutlet UILabel *spebobLabel07;
    
    CGRect *frame01;
    AVAudioPlayer *sound;
    
    int onlyOnce1;
    int onlyOnce2;
    int *result;

}

- (IBAction)buttonCall:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *batchButton;

@property (strong, nonatomic) IBOutlet UILabel *batchLabel;

@property (strong, nonatomic) IBOutlet UIButton *btn01;
@property (strong, nonatomic) IBOutlet UIButton *btn02;
@property (strong, nonatomic) IBOutlet UIButton *btn03;
@property (strong, nonatomic) IBOutlet UIButton *btn04;
@property (strong, nonatomic) IBOutlet UIButton *btn05;
@property (strong, nonatomic) IBOutlet UIButton *btn06;
@property (strong, nonatomic) IBOutlet UIButton *btn07;
- (IBAction)gotoScreensaver:(id)sender;
//-(void)showBatch;
@end
