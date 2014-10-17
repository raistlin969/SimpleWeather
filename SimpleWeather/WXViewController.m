//
//  ViewController.m
//  SimpleWeather
//
//  Created by Michael Davidson on 10/17/14.
//  Copyright (c) 2014 Michael Davidson. All rights reserved.
//

#import "WXViewController.h"
#import <LBBlurredImage/UIImageView+LBBlurredImage.h>

@interface WXViewController ()

@property (strong, nonatomic)UIImageView *backgroundImageView;

@end

@implementation WXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor redColor];
    UIImage *background = [UIImage imageNamed:@"bg"];
    self.backgroundImageView = [[UIImageView alloc] initWithImage:background];
    self.backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:self.backgroundImageView];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    CGRect bounds = self.view.bounds;

    self.backgroundImageView.frame = bounds;
}
@end
