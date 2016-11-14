//
//  MYTableViewCell.m
//  学生管理系统
//
//  Created by 卢文彬 on 2016/11/11.
//  Copyright © 2016年 卢文彬luwenbin. All rights reserved.
//

#import "MYTableViewCell.h"
#import "UIView+Frame.h"
@implementation MYTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.nameLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.nameLabel];
        
        self.ageLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.ageLabel];
        self.ageLabel.textAlignment = NSTextAlignmentCenter;

        self.countLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.countLabel];
        self.countLabel.textAlignment = NSTextAlignmentRight;
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    self.nameLabel.frame = CGRectMake(20, 0, self.contentView.width/3, self.contentView.height);
    
    self.ageLabel.frame = CGRectMake(self.contentView.width/2-50, 0, 100, self.contentView.height);

    self.countLabel.frame = CGRectMake(self.contentView.width/3 + self.contentView.width/3, 0, self.contentView.width/3-20, self.contentView.height);
    
}

- (void)getAnModel:(PersonModel *)model{
    _nameLabel.text = model.name;
    _countLabel.text = model.count;
    _ageLabel.text = model.age;
}

@end
