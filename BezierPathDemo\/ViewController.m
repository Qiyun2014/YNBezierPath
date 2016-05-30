//
//  ViewController.m
//  BezierPathDemo\
//
//  Created by qiyun on 16/5/16.
//  Copyright © 2016年 ProDrone. All rights reserved.
//

#import "ViewController.h"
#import "SNCircleProgressView.h"

@interface ViewController ()
{
    SNCircleProgressView *progressView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    progressView = [[SNCircleProgressView alloc]initWithFrame:CGRectMake(40,80, 100, 100)];
    
    progressView.progressColor = [UIColor redColor];
    progressView.progressStrokeWidth = 5.f;
    progressView.progressTrackColor = [UIColor whiteColor];
    
    [self.view addSubview:progressView];
    
    [NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(changeProgressValue) userInfo:nil repeats:YES];
}

- (void)changeProgressValue
{
    progressView.progressValue += 0.01;
    
    if (progressView.progressValue>=1.f) {
        
        progressView.progressValue = 0.01f;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
