//
//  ViewController1.m
//  学生管理系统
//
//  Created by 卢文彬 on 2016/11/11.
//  Copyright © 2016年 卢文彬luwenbin. All rights reserved.
//

#import "ViewController1.h"
#import "UIView+Frame.h"
#import "MYTableViewCell.h"
#import "PersonModel.h"

#import "ZYPinYinSearch.h"


#define NAVCOLOR [UIColor colorWithRed:10/255.0 green:78/255.0 blue:192/255.0 alpha:1]


@interface ViewController1 ()
@property (nonatomic, strong) UITextField *t1;
@property (nonatomic, strong) UITextField *t2;
@property (nonatomic, strong) UITextField *t3;


@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNav];
    self.title = @"新增成绩";
    [self creatMainView];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
}

- (void)setNav{
    [self setNeedsStatusBarAppearanceUpdate];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.navigationController.navigationBar.barTintColor = NAVCOLOR;
    //    self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[UIImage imageWithOriginalMode:@"ztdh"]];
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBar.translucent = NO;
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,  [UIFont fontWithName:@"Arial-Bold" size:30], NSFontAttributeName, nil];
    self.navigationController.navigationBar.titleTextAttributes = dict;
}

- (void)creatMainView{
    self.t1 = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, self.view.width - 20, 45)];
    self.t1.placeholder = @"请输入学生姓名";
    [self.view addSubview:self.t1];
    
    self.t2 = [[UITextField alloc] initWithFrame:CGRectMake(10, 10+55, self.view.width - 20, 45)];
    self.t2.placeholder = @"请输入学生年龄";
    [self.view addSubview:self.t2];
    
    self.t3 = [[UITextField alloc] initWithFrame:CGRectMake(10, 10+55+55, self.view.width - 20, 45)];
    self.t3.placeholder = @"请输入学生成绩";
    [self.view addSubview:self.t3];
    
    self.t1.borderStyle = UITextBorderStyleRoundedRect;
    self.t2.borderStyle = UITextBorderStyleRoundedRect;
    self.t3.borderStyle = UITextBorderStyleRoundedRect;
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.width/2 - 50, CGRectGetMaxY(self.t3.frame) + 50, 100, 45)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"确定" forState:UIControlStateNormal];
    [self.view addSubview:btn];

}


@end
