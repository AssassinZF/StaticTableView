//
//  ZFStaticTableViewCell+MeAvatar.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/8.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ZFStaticTableViewCell+MeAvatar.h"

@implementation ZFStaticTableViewCell (MeAvatar)

- (void)configureMeAvatarTableViewCellWithViewModel:(ZFStaticTableViewCellViewModel *)viewModel{
    
    self.viewModel = viewModel;
    
    [self.contentView addSubview:self.avatarImageView];
    [self.contentView addSubview:self.userNameLabel];
    [self.contentView addSubview:self.userIdLabel];
    [self.contentView addSubview:self.avatarIndicatorImageView];
    [self.contentView addSubview:self.codeImageView];
}

@end
