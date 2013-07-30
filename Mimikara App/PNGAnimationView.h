//
//  SpriteSheetView.h
//  Mimikara App
//
//  Created by Jakob Højgård Olsen on 6/3/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PNGAnimationView : UIImageView
{
    int currentImageIndex;
    NSMutableArray *spriteSheetImage;
    NSTimer *timer;
    double frameSpeed;
}

@property (assign, nonatomic) BOOL isLoop;
@property (assign, nonatomic) int totalFrame;
@property (assign, nonatomic) BOOL isPlaying;

-(id)initWithFrame:(CGRect)frame fileNamePattern:(NSString *) fileNamePattern startFrame:(int)startFrame totalFrame:(int)totalFrames interval:(double)timeInterval;

-(void)playAnimation;
-(void)stopAnimation;
-(void)gotoFrame:(int)frame;
-(void)clearMomery;
@end
