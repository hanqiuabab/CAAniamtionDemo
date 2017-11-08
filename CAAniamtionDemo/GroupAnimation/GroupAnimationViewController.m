//
//  GroupAnimationViewController.m
//  CAAniamtionDemo
//
//  Created by 陆久银 on 2017/11/7.
//  Copyright © 2017年 lujiuyin. All rights reserved.
//

#import "GroupAnimationViewController.h"

@interface GroupAnimationViewController ()
@property (weak, nonatomic) IBOutlet UIView *rectView;

@end

@implementation GroupAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.duration = 2;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.keyTimes = @[@0,@0.25,@0.5,@0.75,@1];
    animation.autoreverses = YES;
    animation.path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 100, 100)].CGPath;
    

    CABasicAnimation * animation2 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    animation2.toValue = @50;
    animation2.duration = 2;
    animation2.fillMode = kCAFillModeForwards;
    animation2.autoreverses = YES;
    animation2.removedOnCompletion = NO;
    
    
    CAAnimationGroup * group = [CAAnimationGroup animation];
    group.duration = 2;
    group.fillMode = kCAFillModeForwards;
    group.removedOnCompletion = NO;
    group.autoreverses = YES;
    group.animations = @[animation,animation2];
    
    [self.rectView.layer addAnimation:group forKey:@"group"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
