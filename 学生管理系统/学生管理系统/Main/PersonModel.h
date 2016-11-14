//
//  PersonModel.h
//  学生管理系统
//
//  Created by 卢文彬 on 2016/11/11.
//  Copyright © 2016年 卢文彬luwenbin. All rights reserved.
//

#import "BaseModel.h"

@interface PersonModel : BaseModel
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *count;
@property (nonatomic, strong) NSString *age;
@end
