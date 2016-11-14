//
//  ViewController.m
//  学生管理系统
//
//  Created by 卢文彬 on 2016/11/11.
//  Copyright © 2016年 卢文彬luwenbin. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

#import "UIView+Frame.h"
#import "MYTableViewCell.h"
#import "PersonModel.h"

#import "ZYPinYinSearch.h"


#define NAVCOLOR [UIColor colorWithRed:10/255.0 green:78/255.0 blue:192/255.0 alpha:1]


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArr;
@property (nonatomic, strong) NSMutableArray *dataArr1;

@end

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.dataArr = [NSMutableArray array];
        self.dataArr1 = [NSMutableArray array];

    }
    return self;
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

- (void)initData{
    PersonModel *m1 = [[PersonModel alloc] init];
    m1.name = @"张三";
    m1.age = @"14岁";
    m1.count = @"70分";
    [self.dataArr addObject:m1];
    
    PersonModel *m2 = [[PersonModel alloc] init];
    m2.name = @"李四";
    m2.age = @"16岁";
    m2.count = @"80分";
    [self.dataArr addObject:m2];
    
    PersonModel *m3 = [[PersonModel alloc] init];
    m3.name = @"王五";
    m3.age = @"18岁";
    m3.count = @"90分";
    [self.dataArr addObject:m3];
    
    self.dataArr1 = [NSMutableArray arrayWithArray:self.dataArr];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
    [self setNav];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height) style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
//    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    [self.view addSubview:self.tableView];
    
//    self.title = @"全部成绩";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"新增" style:UIBarButtonItemStyleDone target:self action:@selector(addd)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"排序" style:UIBarButtonItemStyleDone target:self action:@selector(paixun)];
    
    UISearchBar *sb = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.view.width - 150, 40)];
    sb.delegate = self;
    self.navigationItem.titleView = sb;
    
}

- (void)addd{
    ViewController1 *vc = [[ViewController1 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)paixun{
    
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    
    NSArray *arr = [NSArray array];
    arr = [ZYPinYinSearch searchWithOriginalArray:self.dataArr1 andSearchText:searchBar.text andSearchByPropertyName:@"name"];
    self.dataArr = [NSMutableArray arrayWithArray:arr];
    [self.tableView reloadData];

}
#pragma mark -- 代理

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 120;
//}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MYTableViewCell *cell = [[MYTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
   if (cell != nil) {
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    [cell getAnModel:[self.dataArr objectAtIndex:indexPath.row]];
    return cell;
    
}

@end
