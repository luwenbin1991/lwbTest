//
//  UIBarButtonItem+Extension.m
//
//  Created by apple on 15/1/11.
//  Copyright (c) 2015年 . All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIView+Frame.h"

@implementation UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action
{
    // 创建右边按钮
    UIButton *btn = [[UIButton alloc] init];
    // 设置当前按钮默认状态和高亮状态的图片
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
    // 设置按钮的size
    btn.size =btn.currentBackgroundImage.size;
    // 监听按钮的点击
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 2.将按钮包装为UIBarButtonItem
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}

@end
