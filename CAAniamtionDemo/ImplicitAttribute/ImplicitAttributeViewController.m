//
//  ImplicitAttributeViewController.m
//  CAAniamtionDemo
//
//  Created by 陆久银 on 2017/11/6.
//  Copyright © 2017年 lujiuyin. All rights reserved.
//

#import "ImplicitAttributeViewController.h"
#import "UIColor+Random.h"

#define WIDTH   50
@interface ImplicitAttributeViewController ()

@end

@implementation ImplicitAttributeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self drawMyLayer];
}

- (void)drawMyLayer {
    
    CGSize size = self.view.bounds.size;
    
    CALayer *layer = [CALayer layer];
    layer.backgroundColor = [UIColor blueColor].CGColor;
    layer.position = CGPointMake(size.width / 2, size.height / 2);
    layer.bounds = CGRectMake(0, 0, WIDTH, WIDTH);
    layer.cornerRadius = layer.bounds.size.width /2;
    
    layer.borderColor = [UIColor redColor].CGColor;
    layer.borderWidth = 5;
    [self.view.layer addSublayer:layer];
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CALayer *layer = [[self.view.layer sublayers] firstObject];
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    CGFloat width = layer.bounds.size.width;
    if (width == WIDTH) {
        width = WIDTH * 4;
    }else {
        width = WIDTH;
    }
    
    layer.position = point;
    layer.bounds = CGRectMake(0, 0, width, width);
    layer.cornerRadius = width /2;
    layer.borderColor = [UIColor randomColor].CGColor;
    layer.backgroundColor = [UIColor randomColor].CGColor;
    layer.anchorPoint = CGPointMake(arc4random_uniform(10)/10.0, arc4random_uniform(10)/10.0);
    layer.borderWidth = arc4random_uniform(width/2);
    layer.contents = (__bridge id _Nullable)([UIImage imageNamed:[NSString stringWithFormat:@"0%ld",arc4random_uniform(9)]].CGImage);
}
@end
