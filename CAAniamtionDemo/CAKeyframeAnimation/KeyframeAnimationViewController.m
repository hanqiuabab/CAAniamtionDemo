//
//  KeyframeAnimationViewController.m
//  CAAniamtionDemo
//
//  Created by 陆久银 on 2017/11/7.
//  Copyright © 2017年 lujiuyin. All rights reserved.
//

#import "KeyframeAnimationViewController.h"

@interface KeyframeAnimationViewController ()
@property (weak, nonatomic) IBOutlet UIView *rectView;

@end

@implementation KeyframeAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addKeyframeAnimation];
}

- (void)addKeyframeAnimation {
    CAKeyframeAnimation *keyframeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    NSValue *value1 = [NSValue valueWithCGPoint:CGPointMake(100, 100)];
    NSValue *value2 = [NSValue valueWithCGPoint:CGPointMake(300, 200)];
    NSValue *value3 = [NSValue valueWithCGPoint:CGPointMake(100, 400)];
    NSValue *value4 = [NSValue valueWithCGPoint:CGPointMake(300, 400)];

    keyframeAnimation.values = @[value1,value2,value3,value4];
    keyframeAnimation.keyTimes = @[@0.1,@0.2,@0.75,@1];
    keyframeAnimation.duration = 3;
    keyframeAnimation.fillMode = kCAFillModeForwards;
    keyframeAnimation.autoreverses = YES;
    keyframeAnimation.repeatCount = MAXFLOAT;
    keyframeAnimation.calculationMode = kCAAnimationCubicPaced;
//    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 400, 300)];
//    keyframeAnimation.path = path.CGPath;
    [self.rectView.layer addAnimation:keyframeAnimation forKey:nil];
}
@end
