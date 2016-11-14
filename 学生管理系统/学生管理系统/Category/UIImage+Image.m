//
//  UIImage+Image.m
//
//  Created by apple on 14/1/5.
//  Copyright (c) 2015年  All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)
+ (UIImage *)imageWithOriginalMode:(NSString *)imageName
{
    
    UIImage *image = [UIImage imageNamed:imageName];
    // 告诉这张图片保持原有的图片样式
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}
@end
