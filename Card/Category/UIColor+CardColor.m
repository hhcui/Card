//
//  UIColor+CardColor.m
//  Card
//
//  Created by chh on 16/1/6.
//  Copyright © 2016年 marc. All rights reserved.
//

#import "UIColor+CardColor.h"

@implementation UIColor (CardColor)

+(CAGradientLayer *)colorWithBackgroup:(CGRect)frame {

    //初始化渐变层
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = [[UIScreen mainScreen] bounds];
    
    
    //设置渐变颜色方向
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);
    
    //设定颜色组
    gradientLayer.colors = @[(__bridge id)RGBACOLOR(192, 57, 43, 0.5).CGColor,
                             (__bridge id)RGBACOLOR(154, 113, 140, 0.5).CGColor];
    
    //设定颜色分割点
    gradientLayer.locations = @[@(0.5f) ,@(1.0f)];
    
    return gradientLayer;
}
@end
