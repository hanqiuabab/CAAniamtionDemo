//
//  BasicAnimationViewController.m
//  CAAniamtionDemo
//
//  Created by 陆久银 on 2017/11/7.
//  Copyright © 2017年 lujiuyin. All rights reserved.
//

#import "BasicAnimationViewController.h"
#import "UIColor+Random.h"
@interface BasicAnimationViewController ()

@property (nonatomic, strong) UIView *rectView;
@end

@implementation BasicAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.rectView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    self.rectView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.rectView];
}
- (IBAction)addRotationAnimation:(id)sender {
    CABasicAnimation *basic0 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    basic0.toValue = [NSNumber numberWithFloat:M_PI];
    basic0.duration = 1;
    basic0.fillMode = kCAFillModeForwards;
    basic0.removedOnCompletion = NO;
    basic0.repeatCount = MAXFLOAT;
    basic0.autoreverses = YES;
    [self.rectView.layer addAnimation:basic0 forKey:nil];
}

- (IBAction)addPositionAnimation:(id)sender {
    CABasicAnimation *basic0 = [CABasicAnimation animationWithKeyPath:@"position"];
    basic0.toValue = [NSValue valueWithCGPoint:CGPointMake(300, 300)];
    basic0.duration = 1;
    basic0.fillMode = kCAFillModeForwards;
    basic0.removedOnCompletion = NO;
    basic0.repeatCount = MAXFLOAT;
    basic0.autoreverses = YES;
    [self.rectView.layer addAnimation:basic0 forKey:nil];
}

- (IBAction)addScaleAnimation:(id)sender {
    CABasicAnimation *basic0 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    basic0.toValue = [NSNumber numberWithFloat:0.1];
    basic0.duration = 1;
    basic0.fillMode = kCAFillModeForwards;
    basic0.removedOnCompletion = NO;
    basic0.repeatCount = MAXFLOAT;
    basic0.autoreverses = YES;
    [self.rectView.layer addAnimation:basic0 forKey:nil];
}

- (IBAction)addBackgroundAnimation:(id)sender {
    CABasicAnimation *basic0 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    basic0.toValue = (id)([UIColor randomColor].CGColor);
    basic0.fromValue = (id)([UIColor randomColor].CGColor);
    basic0.duration = 1;
    basic0.fillMode = kCAFillModeForwards;
    basic0.removedOnCompletion = NO;
    basic0.repeatCount = MAXFLOAT;
    [self.rectView.layer addAnimation:basic0 forKey:nil];
}


@end
