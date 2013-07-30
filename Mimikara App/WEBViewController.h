//
//  WEBViewController.h
//  Mimikara App
//
//  Created by jaol@widex.com on 6/13/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PNGAnimationView.h"

@interface WEBViewController : UIViewController <UIWebViewDelegate>{

        IBOutlet UILabel *loadLabel;
    PNGAnimationView *animation;
    IBOutlet UIView *overLay;
}
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
- (IBAction)closePop:(id)sender;


@end
