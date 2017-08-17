//
//  ZFStaticTableViewCell.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZFStaticTableViewCellViewModel.h"

@interface ZFStaticTableViewCell : UITableViewCell

@property (nonatomic, strong) ZFStaticTableViewCellViewModel *viewModel;

//left
@property (nonatomic, strong) UIImageView *leftImageView;
@property (nonatomic, strong) UILabel *leftTitleLabel;
@property (nonatomic, strong) UILabel *leftSubTitleLabel;
//right
@property (nonatomic, strong) UIImageView *indicatorArrow;//右侧箭头
@property (nonatomic, strong) UIImageView *rightImageView;
@property (nonatomic, strong) UILabel *rightSubLabel;

/**
 开关按钮
 */
@property (nonatomic, strong) UISwitch *indicatorSwitch;


-(void)configureDefaultCellWithModel:(ZFStaticTableViewCellViewModel *)viewModel;

@end
