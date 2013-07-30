/*
 AVPlayerDemoPlaybackView.m
 Abstract: UIView subclass to display the content associated with an AVPlayer
 Version: 1.1
 //  Mimikara App
 //
 //  Created by Jakob Højgård Olsen on 6/3/13.
 //  Copyright (c) 2013 Widex A/S. All rights reserved.
 */
#import "AVPlayerDemoPlaybackView.h"
#import <AVFoundation/AVFoundation.h>
#import <CoreVideo/CoreVideo.h>

@implementation AVPlayerDemoPlaybackView

+ (Class)layerClass
{
	return [AVPlayerLayer class];
}

- (AVPlayer*)player
{
	return [(AVPlayerLayer*)[self layer] player];
}

- (void)setPlayer:(AVPlayer*)player
{
	[(AVPlayerLayer*)[self layer] setPlayer:player];
    
    
    
}

/* Specifies how the video is displayed within a player layer’s bounds. 
	(AVLayerVideoGravityResizeAspect is default) */
- (void)setVideoFillMode:(NSString *)fillMode
{
	AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
	playerLayer.videoGravity = fillMode;//AVLayerVideoGravityResizeAspectFill;//fillMode;
    
       
    
  }

//


@end
