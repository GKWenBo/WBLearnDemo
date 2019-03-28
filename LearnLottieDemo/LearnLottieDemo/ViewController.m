//
//  ViewController.m
//  LearnLottieDemo
//
//  Created by Mr_Lucky on 2018/12/10.
//  Copyright © 2018 wenbo. All rights reserved.
//

#import "ViewController.h"
#import <Lottie/Lottie.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LOTAnimationView *animationView = [LOTAnimationView animationNamed:@"preloader"];
    animationView.bounds = CGRectMake(0, 0, 200, 200);
    animationView.center = self.view.center;
    animationView.loopAnimation = YES;
    animationView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:animationView];
    
    [animationView play];
}


@end
