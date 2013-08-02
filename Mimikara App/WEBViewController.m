//
//  WEBViewController.m
//  Mimikara App
//
//  Created by jaol@widex.com on 6/13/13.
//  Copyright (c) 2013 Widex A/S. All rights reserved.
//

#import "WEBViewController.h"
#import "PNGAnimationView.h"

@interface WEBViewController ()

@end

@implementation WEBViewController
@synthesize myWebView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPhone Simulator"])
    {
         animation = [[PNGAnimationView alloc] initWithFrame:CGRectMake(210,80, 150,210) fileNamePattern:@"Singleduck1_%@.png" startFrame:0 totalFrame:49 interval:0.04];
     }else
if([deviceType isEqualToString:@"iPad"]|| [deviceType isEqualToString:@"iPad Simulator"])
{
    animation = [[PNGAnimationView alloc] initWithFrame:CGRectMake(330, 100, 200,350) fileNamePattern:@"Singleduck1_%@.png" startFrame:0 totalFrame:49 interval:0.04];
}
    [animation setIsLoop:YES];
    [self.view addSubview:animation];
    [animation playAnimation];
    
    
    NSString *fullURL = @"http://www.widexjp.co.jp/shop_search/";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    myWebView.delegate = self;
    
    myWebView.scalesPageToFit=YES; 
    
    [myWebView loadRequest:requestObj];
   

}


-(void)webViewDidStartLoad:(UIWebView *)webView {


}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"DONE LOADING");
    [UIView animateWithDuration:2 animations:^{
        overLay.alpha = 0;
        animation.alpha = 0;
    } completion:^(BOOL finished) {
        //
    }];
}


-(void)fadeOut:(NSTimer *)FadeOutTimer {
    
    [FadeOutTimer invalidate];
    FadeOutTimer = nil;

    [UIView animateWithDuration:2 animations:^{
        loadLabel.alpha = 0;
        animation.alpha = 0;
    } completion:^(BOOL finished) {
        //
    }];

    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closePop:(id)sender {
    
    [self dismissModalViewControllerAnimated:YES];
}
@end
