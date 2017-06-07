//
//  ZFStaticTableViewDataSource.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ZFStaticTableViewCellViewModel,ZFStaticTableViewCell;

typedef void(^ZFStaticCellConfigureBlock)(ZFStaticTableViewCell *cell, ZFStaticTableViewCellViewModel * viewModel);

@interface ZFStaticTableViewDataSource : NSObject<UITableViewDataSource>

@property (nonatomic, strong) NSArray *viewModelsArray;

- (instancetype)initWithViewModelsArray:(NSArray *)viewModelsArray configureBlock:(ZFStaticCellConfigureBlock)block;


@end
