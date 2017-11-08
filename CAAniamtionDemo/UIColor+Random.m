//
//  UIColor+Random.m
//  CAAniamtionDemo
//
//  Created by 陆久银 on 2017/11/6.
//  Copyright © 2017年 lujiuyin. All rights reserved.
//

#import "UIColor+Random.h"

@implementation UIColor (Random)

+ (UIColor *)randomColor {
    return [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0];
}
@end
