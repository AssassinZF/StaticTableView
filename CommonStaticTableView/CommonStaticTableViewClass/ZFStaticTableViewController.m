//
//  ZFStaticTableViewController.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ZFStaticTableViewController.h"

@interface ZFStaticTableViewController ()
@property (nonatomic, assign ,readwrite)TableViewShowStytle defaultDataType;
@end

@implementation ZFStaticTableViewController

-(instancetype)initWithDefaultDataType:(TableViewShowStytle)defaultDataType{
    self = [super init];
    if (self) {
        self.defaultDataType = defaultDataType;
    }
    return self;
}

- (instancetype)init
{
    self = [self initWithDefaultDataType:ZFDefaultDataExist];
    return self;
}

-(void)configureTableView{
    [self configureDataSource];
    [self.view addSubview:self.tableView];
    self.view.backgroundColor = [UIColor redColor];
    self.navigationController.navigationBar.barTintColor = ColorWithRGB(18, 18, 18, 1.0);

    //修改导航条标题颜色
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
    
    //修改导航条添加的按钮
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;


}

-(void)configureDataSource{}

-(ZFStaticTableView *)tableView{
    if (!_tableView) {
        _tableView = [[ZFStaticTableView alloc] initWithFrame:CGRectMake(0, 0, SJScreenWidth, SJScreenHeight)  style:UITableViewStyleGrouped];
        _tableView.zfDelegate = self;
        _tableView.zfDataSource = self.dataSource;
        self.tableView.contentInset = UIEdgeInsetsMake(-35,0,0,0);

        
    }
    return _tableView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.defaultDataType == ZFDefaultDataExist) [self configureTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
