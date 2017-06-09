//
//  ZFStaticTableViewCell+LogoutCell.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/8.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ZFStaticTableViewCell+LogoutCell.h"

@implementation ZFStaticTableViewCell (LogoutCell)

- (void)configureLogoutTableViewCellWithViewModel:(ZFStaticTableViewCellViewModel *)viewModel
{
    self.viewModel = viewModel;
    [self.contentView addSubview:self.logoutLabel];
}

@end
