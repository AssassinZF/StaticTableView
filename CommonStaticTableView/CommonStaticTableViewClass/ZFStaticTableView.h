//
//  ZFStaticTableView.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZFStaticTableViewDataSource.h"

@class ZFStaticTableViewCellViewModel;
@class ZFStaticTableViewSectionViewModel;

@protocol ZFStaticTableViewDelegate <UITableViewDelegate>

@optional
//点击
-(void)didSelectViewModel:(ZFStaticTableViewCellViewModel *)viewModel atIndexPath:(NSIndexPath *)indexPath;

@end

@interface ZFStaticTableView : UITableView<UITableViewDelegate>

@property (nonatomic, assign)id<ZFStaticTableViewDelegate>zfDelegate;
@property (nonatomic, assign)id<ZFStaticTableViewDataSource>zfDataSource;
@end
