//
//  ZFStaticTableViewController.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZFStaticTableviewHeader.h"

typedef NS_ENUM(NSInteger, TableViewShowStytle) {
    ZFDefaultDataExist,//可以默认生成默认数据源（如果有网络刷新可单独去刷新cell数据）
    ZFDefaultDataNone,//完全依赖网络数据源,有了数据源才能看见列表
    
};

@protocol ZFStaticTableViewControllerDelegate <NSObject>

@required
-(void)configureDataSource;//配置数据源 子类必须实现该方法

@end


@interface ZFStaticTableViewController : UIViewController<ZFStaticTableViewDelegate,ZFStaticTableViewControllerDelegate>
@property (nonatomic, strong)ZFStaticTableView *tableView;
@property (nonatomic, strong)ZFStaticTableViewDataSource *dataSource;
@property (nonatomic, assign ,readonly)TableViewShowStytle defaultDataType;

-(instancetype)initWithDefaultDataType:(TableViewShowStytle)defaultDataType;


/**
 如果依赖网络返回数据创建tableview 那就等网络返回调用该方法
 */
-(void)configureTableView;

@end
