/*
AVPlayerDemoPlaybackView.h
Abstract: UIView subclass to display the content associated with an AVPlayer
Version: 1.1
//  Mimikara App
//
//  Created by Jakob Højgård Olsen on 6/3/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
*/


#import <UIKit/UIKit.h>

@class AVPlayer;

@interface AVPlayerDemoPlaybackView : UIView

@property (strong, nonatomic) AVPlayer* player;

- (void)setPlayer:(AVPlayer*)player;
- (void)setVideoFillMode:(NSString *)fillMode;

@end
