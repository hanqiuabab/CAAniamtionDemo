//
//  TransitionViewController.m
//  CAAniamtionDemo
//
//  Created by 陆久银 on 2017/11/7.
//  Copyright © 2017年 lujiuyin. All rights reserved.
//

#import "TransitionViewController.h"

@interface TransitionViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation TransitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)animationAction:(id)sender {
    CATransition *animation = [CATransition animation];
    animation.duration = 5;
    animation.fillMode = kCAFillModeForwards;
    animation.type = @"oglFlip";
    //@"cube" @"moveIn" @"reveal" @"fade"(default) @"pageCurl" @"pageUnCurl" @"suckEffect" @"rippleEffect" @"oglFlip"
    animation.subtype = kCATransitionFromTop;
    [self.imageView.layer addAnimation:animation forKey:nil];
    self.imageView.image = [UIImage imageNamed:@"aaa.jpg"];
}

@end
