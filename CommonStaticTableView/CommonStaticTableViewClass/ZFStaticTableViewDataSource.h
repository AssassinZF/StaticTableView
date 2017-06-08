//
//  ZFStaticTableViewDataSource.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ZFStaticTableViewCellViewModel,ZFStaticTableViewCell,ZFStaticTableViewSectionViewModel;

typedef void(^ZFStaticCellConfigureBlock)(ZFStaticTableViewCell *cell, ZFStaticTableViewCellViewModel * viewModel);

@protocol ZFStaticTableViewDataSource <UITableViewDataSource>

@optional

- (ZFStaticTableViewSectionViewModel *)tableView:(UITableView *)tableView sectionViewModelInSection:(NSInteger )section;
- (ZFStaticTableViewCellViewModel *)tableView:(UITableView *)tableview cellViewModelAtIndexPath:(NSIndexPath *)indexPath;

@end


@interface ZFStaticTableViewDataSource : NSObject<ZFStaticTableViewDataSource>

@property (nonatomic, strong) NSArray *viewModelsArray;//所有的数据源

- (instancetype)initWithViewModelsArray:(NSArray *)viewModelsArray configureBlock:(ZFStaticCellConfigureBlock)block;


@end
