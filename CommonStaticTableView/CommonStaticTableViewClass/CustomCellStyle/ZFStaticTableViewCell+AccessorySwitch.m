//
//  ZFStaticTableViewCell+AccessorySwitch.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/8.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ZFStaticTableViewCell+AccessorySwitch.h"

@implementation ZFStaticTableViewCell (AccessorySwitch)
- (void)configureAccessorySwitchCellWithViewModel:(ZFStaticTableViewCellViewModel *)viewModel
{
    [self layoutLeftPartSubViewsWithViewModel:viewModel];
    [self.contentView addSubview:self.indicatorSwitch];
}

@end
