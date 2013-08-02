//
//  ViewController_play.m
//  Mimikara App
//
//  Created by Jakob Højgård Olsen on 6/3/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
//

#import "ViewController_play.h"

@interface ViewController_play ()

@end

@implementation ViewController_play
@synthesize containerView;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



-(void)viewDidAppear:(BOOL)animated
{
    [(ELCUIApplication *)[UIApplication sharedApplication] resetIdleTimer];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidTimeout:) name:kApplicationDidTimeoutNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showBatch:) name:kApplicationDidTimeoutNotificationBatch object:nil];

    [self buttonCall:_btn07];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.batchButton.alpha = 0;
    // self.batchLabel.alpha = 0.0;
    [self hideCurves];
    
    
    NSString *deviceType = [UIDevice currentDevice].model;
   
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPhone Simulator"])
    {
        animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(-5, 90, 80,130) fileNamePattern:@"Singleduck1_%@.png" startFrame:0 totalFrame:49 interval:0.04];
        [animationView1 setIsLoop:YES];
        [self.containerView addSubview:animationView1];
        [animationView1 playAnimation];
        
        animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(55, 92, 80, 130) fileNamePattern:@"Singleduck2_0000_%@.png" startFrame:0 totalFrame:49 interval:0.04];
        [animationView1 setIsLoop:YES];
        [self.containerView addSubview:animationView1];
        [animationView1 playAnimation];
        
        animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(130, 105, 65, 115) fileNamePattern:@"Singleduck6_%@.png" startFrame:0 totalFrame:49 interval:0.04];
        [animationView1 setIsLoop:YES];
        [self.containerView addSubview:animationView1];
        [animationView1 playAnimation];
        
        animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(190, 100,  75, 125) fileNamePattern:@"Singleduck7_%@.png" startFrame:0 totalFrame:49 interval:0.04];
        [animationView1 setIsLoop:YES];
        [self.containerView addSubview:animationView1];
        [animationView1 playAnimation];
        
        animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(252, 90, 80, 130) fileNamePattern:@"Singleduck5_0000_%@.png" startFrame:0 totalFrame:49 interval:0.04];
        [animationView1 setIsLoop:YES];
        [self.containerView addSubview:animationView1];
        [animationView1 playAnimation];
        
        animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(322, 100,  70, 125) fileNamePattern:@"Singleduck3_%@.png" startFrame:0 totalFrame:49 interval:0.04];
        [animationView1 setIsLoop:YES];
        [self.containerView addSubview:animationView1];
        [animationView1 playAnimation];
        
        animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(375, 85, 85, 135) fileNamePattern:@"Singleduck4_0000_%@.png" startFrame:0 totalFrame:49 interval:0.04];
        [animationView1 setIsLoop:YES];
        [self.containerView addSubview:animationView1];
        [animationView1 playAnimation];

    }else
        if([deviceType isEqualToString:@"iPad"]|| [deviceType isEqualToString:@"iPad Simulator"])
        {
           
            animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(0, 230, 200, 350) fileNamePattern:@"Singleduck1_%@.png" startFrame:0 totalFrame:49 interval:0.04];
            [animationView1 setIsLoop:YES];
            [self.view addSubview:animationView1];
            [animationView1 playAnimation];
            
            animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(125, 235, 200, 350) fileNamePattern:@"Singleduck2_0000_%@.png" startFrame:0 totalFrame:49 interval:0.04];
            [animationView1 setIsLoop:YES];
            [self.view addSubview:animationView1];
            [animationView1 playAnimation];
            
            animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(280, 270, 180, 330) fileNamePattern:@"Singleduck3_%@.png" startFrame:0 totalFrame:49 interval:0.04];
            [animationView1 setIsLoop:YES];
            [self.view addSubview:animationView1];
            [animationView1 playAnimation];
            
            animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(435, 285, 150, 300) fileNamePattern:@"Singleduck7_%@.png" startFrame:0 totalFrame:49 interval:0.04];
            [animationView1 setIsLoop:YES];
            [self.view addSubview:animationView1];
            [animationView1 playAnimation];
            
            animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(540, 235, 200, 350) fileNamePattern:@"Singleduck5_0000_%@.png" startFrame:0 totalFrame:49 interval:0.04];
            [animationView1 setIsLoop:YES];
            [self.view addSubview:animationView1];
            [animationView1 playAnimation];
            
            animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(720, 275, 150, 300) fileNamePattern:@"Singleduck6_%@.png" startFrame:0 totalFrame:49 interval:0.04];
            [animationView1 setIsLoop:YES];
            [self.view addSubview:animationView1];
            [animationView1 playAnimation];
            
            animationView1 = [[PNGAnimationView alloc] initWithFrame:CGRectMake(835, 235, 200, 350) fileNamePattern:@"Singleduck4_0000_%@.png" startFrame:0 totalFrame:49 interval:0.04];
            [animationView1 setIsLoop:YES];
            [self.view addSubview:animationView1];
            [animationView1 playAnimation];

        }
    
	    
}

-(void)hideGFX:(NSNotification*) notif{
   
//self.batchButton.alpha = 0.0;
  //  self.batchLabel.alpha = 0.0;
}

- (void) showBatch:(NSNotification *) notif
{
    if(onlyOnce2 == 0){
    [UIView animateWithDuration:1.0 animations:^{
        
        self.batchButton.alpha = 1.0;
       self.batchLabel.alpha = 1.0;
     }];
        
    }
    
    
   onlyOnce2 ++;
}

- (void) applicationDidTimeout:(NSNotification *) notif
{
    onlyOnce1 ++;
    //NSLog(@"TIMES UP %i",nextLevelHasNotBeenCalled);
    [self performSelector:@selector(loadScreensaverViewController) withObject:nil afterDelay:1.0];
}

-(void)loadScreensaverViewController
{
    if(onlyOnce1==1){
        [self performSegueWithIdentifier:@"gotoScreensaver" sender:self];
    }
}




- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)success {
    if (success) {
        // last sound finished successfully, play the next sound
        //NSLog(@"audio done!");
        [self hideCurves];
        [self flipButton:0];
    } else {
        // something went wrong, show an error?
    }
}

- (void)hideCurves{
    
    curve01.alpha = 0;
    curve02.alpha = 0;
    curve03.alpha = 0;
    curve04.alpha = 0;
    curve05.alpha = 0;
    curve06.alpha = 0;
    curve07.alpha = 0;
    spebob01.alpha = 0.0;
    spebob02.alpha = 0.0;
    spebob03.alpha = 0.0;
    spebob04.alpha = 0.0;
    spebob05.alpha = 0.0;
    spebob06.alpha = 0.0;
    spebob07.alpha = 0.0;
    
    spebobLabel01.alpha = 0.0;
    spebobLabel02.alpha = 0.0;
    spebobLabel03.alpha = 0.0;
    spebobLabel04.alpha = 0.0;
    spebobLabel05.alpha = 0.0;
    spebobLabel06.alpha = 0.0;
    spebobLabel07.alpha = 0.0;
    
    curve01.transform = CGAffineTransformMakeScale(.6, 1);
    curve02.transform = CGAffineTransformMakeScale(.6, 1);
    curve03.transform = CGAffineTransformMakeScale(.6, 1);
    curve04.transform = CGAffineTransformMakeScale(.6, 1);
    curve05.transform = CGAffineTransformMakeScale(.6, 1);
    curve06.transform = CGAffineTransformMakeScale(.6, 1);
    curve07.transform = CGAffineTransformMakeScale(.6, 1);
    
    _btn01.selected = FALSE;
    _btn02.selected = FALSE;
    _btn03.selected = FALSE;
    _btn04.selected = FALSE;
    _btn05.selected = FALSE;
    _btn06.selected = FALSE;
    _btn07.selected = FALSE;
    [self.view.layer removeAllAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) flipButton:(UIButton*) button {
    if(button.selected)
        [button setSelected:NO];
    else
        [button setSelected:YES];
    
}


- (IBAction)buttonCall:(id)sender {
    
    if(self.batchButton.alpha >= 1){
        onlyOnce2 = 0;
         [UIView animateWithDuration:.6 animations:^{
             //self.batchButton.alpha = 0.0;
            // self.batchLabel.alpha = 0.0;
         }];
    }
    [(ELCUIApplication *)[UIApplication sharedApplication] resetIdleTimer];


    UIButton *touchedButton = (UIButton*) sender;
     
    [self performSelector:@selector(flipButton:) withObject:sender afterDelay:0.0];
    if(currentlySelectedButton != nil) {
        [self flipButton:currentlySelectedButton];
    }
    
    currentlySelectedButton = touchedButton;
    
    [self hideCurves];
    
    if(sound)[sound release];
        if (sender == _btn01) {
            [UIView animateWithDuration: .5 animations:^{
                curve01.alpha = 1.0;
                spebob01.alpha = 1;
                spebobLabel01.alpha = 1;
                curve01.transform = CGAffineTransformMakeScale(1, 1);
            }];
            
            NSString *pathsoundFile = [[NSBundle mainBundle] pathForResource:@"17000" ofType:@"mp3"];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathsoundFile] error:NULL];
             sound.delegate = self;
            sound.volume = 1;
            [sound play];
            
        } if (sender == _btn02) {
            [UIView animateWithDuration: .5 animations:^{
                curve02.alpha = 1.0;
                spebob02.alpha = 1;
                spebobLabel02.alpha = 1;
                curve02.transform = CGAffineTransformMakeScale(1, 1);
            }];
            
            NSString *pathsoundFile = [[NSBundle mainBundle] pathForResource:@"16000" ofType:@"mp3"];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathsoundFile] error:NULL];
             sound.delegate = self;
            sound.volume = 1;
            [sound play];
            
        }
        else if (sender == _btn03) {
            [UIView animateWithDuration: .5 animations:^{
                curve03.alpha = 1.0;
                spebob03.alpha = 1;
                spebobLabel03.alpha = 1;
                curve03.transform = CGAffineTransformMakeScale(1, 1);
            }];
            
            NSString *pathsoundFile = [[NSBundle mainBundle] pathForResource:@"15000" ofType:@"mp3"];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathsoundFile] error:NULL];
             sound.delegate = self;
            sound.volume = 1;
            [sound play];
        }
        else if (sender == _btn04) {
            [UIView animateWithDuration: .5 animations:^{
                curve04.alpha = 1.0;
                spebob04.alpha = 1;
                spebobLabel04.alpha = 1;
                curve04.transform = CGAffineTransformMakeScale(1, 1);
            }];
            NSString *pathsoundFile = [[NSBundle mainBundle] pathForResource:@"14000" ofType:@"mp3"];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathsoundFile] error:NULL];
             sound.delegate = self;
            sound.volume = 1;
            [sound play];
        }
        else if (sender == _btn05) {
            [UIView animateWithDuration: .5 animations:^{
                curve05.alpha = 1.0;
                curve05.transform = CGAffineTransformMakeScale(1, 1);
                spebob05.alpha = 1;
                spebobLabel05.alpha = 1;
            }];
            NSString *pathsoundFile = [[NSBundle mainBundle] pathForResource:@"12000" ofType:@"mp3"];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathsoundFile] error:NULL];
             sound.delegate = self;
            sound.volume = 1;
            [sound play];
            
        }
        else if (sender == _btn06) {
            [UIView animateWithDuration: .5 animations:^{
                curve06.alpha = 1.0;
                curve06.transform = CGAffineTransformMakeScale(1, 1);
                spebob06.alpha = 1;
                spebobLabel06.alpha = 1;
            }];
            NSString *pathsoundFile = [[NSBundle mainBundle] pathForResource:@"10000" ofType:@"mp3"];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathsoundFile] error:NULL];
             sound.delegate = self;
            sound.volume = 1;
            [sound play];
            
        }
        else if (sender == _btn07) {
            [UIView animateWithDuration: .5 animations:^{
                curve07.alpha = 1.0;
                curve07.transform = CGAffineTransformMakeScale(1, 1);
                spebob07.alpha = 1;
                spebobLabel07.alpha = 1;
            }];
            NSString *pathsoundFile = [[NSBundle mainBundle] pathForResource:@"8000" ofType:@"mp3"];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathsoundFile] error:NULL];
             sound.delegate = self;
            sound.volume = 1;
            [sound play];
            
        }
    [UIView setAnimationDelegate:self];
}
- (IBAction)gotoScreensaver:(id)sender {
    
    [sound pause];
    if(sound)[sound release];
    [self performSegueWithIdentifier:@"gotoScreensaver" sender:self];
    
}
@end
