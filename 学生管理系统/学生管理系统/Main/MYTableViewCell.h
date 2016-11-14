
//
//  MYTableViewCell.h
//  学生管理系统
//
//  Created by 卢文彬 on 2016/11/11.
//  Copyright © 2016年 卢文彬luwenbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonModel.h"

@interface MYTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *ageLabel;
@property (nonatomic, strong) UILabel *countLabel;

- (void)getAnModel:(PersonModel *)model;
@end
