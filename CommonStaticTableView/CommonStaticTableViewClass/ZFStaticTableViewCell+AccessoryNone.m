//
//  ZFStaticTableViewCell+AccessoryNone.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/8.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ZFStaticTableViewCell+AccessoryNone.h"

@implementation ZFStaticTableViewCell (AccessoryNone)

- (void)configureAccessoryNoneCellWithViewModel:(ZFStaticTableViewCellViewModel *)viewModel
{
    [self layoutLeftPartSubViewsWithViewModel:viewModel];
}

@end
