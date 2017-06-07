//
//  ZFStaticTableViewCell.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZFStaticTableViewCellViewModel;

@interface ZFStaticTableViewCell : UITableViewCell

@property (nonatomic, strong) ZFStaticTableViewCellViewModel *viewModel;

// =============== 系统风格cell的所有控件 =============== //

//左半部分
@property (nonatomic, strong) UIImageView *leftImageView;               //左侧的ImageView
@property (nonatomic, strong) UILabel *leftTitleLabel;                  //左侧的Label

//右半部分
@property (nonatomic, strong) UIImageView *indicatorArrow;              //右侧的箭头
@property (nonatomic, strong) UIImageView *indicatorLeftImageView;      //右侧的箭头的左边的imageview
@property (nonatomic, strong) UILabel *indicatorLeftLabel;              //右侧的箭头的左边的Label
@property (nonatomic, strong) UISwitch *indicatorSwitch;                //右侧的箭头的左边的开关
@property (nonatomic, strong) UILabel *logoutLabel;                     //退出登录的label

// =============== 用户自定义的cell里面的控件 =============== //

//MeViewController里面的头像cell
@property (nonatomic, strong) UIImageView *avatarImageView;
@property (nonatomic, strong) UIImageView *codeImageView;
@property (nonatomic, strong) UIImageView *avatarIndicatorImageView;
@property (nonatomic, strong) UILabel *userNameLabel;
@property (nonatomic, strong) UILabel *userIdLabel;


//统一的，布局cell左侧部分的内容（标题 ／ 图片 + 标题），所有系统风格的cell都要调用这个方法
- (void)layoutLeftPartSubViewsWithViewModel:(ZFStaticTableViewCellViewModel *)viewModel;

@end
