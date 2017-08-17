//
//  ZFStaticTableViewCellViewModel.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ConfigureConst.h"

typedef NS_ENUM(NSInteger, ZFStaticCellType) {
    ZFStaticCellTypeDefault,
    ZFStaticCellTypeCustom,
};

typedef void(^SwitchValueChagedBlock)(BOOL isOn);           //switch开关切换时调用的block


@interface ZFStaticTableViewCellViewModel : NSObject

@property (nonatomic, assign) ZFStaticCellType staticCellType;
@property (nonatomic, copy)   NSString *cellID;
@property (nonatomic, assign) NSInteger identifier;

/**
 icon
 */
@property (nonatomic, strong) UIImage  *leftImage;
@property (nonatomic, assign) CGSize leftImageSize;
@property (nonatomic, assign) CGFloat leftImageSpace;


/**
 标题
 */
@property (nonatomic, copy)   NSString *leftTitle;
@property (nonatomic, strong) UIColor *leftLabelTextColor;                       //当前组cell左侧label里文字的颜色
@property (nonatomic, strong) UIFont *leftLabelTextFont;                         //当前组cell左侧label里文字的字体
@property (nonatomic, assign) CGFloat leftTitleSpace;


/**
 副标题
 */
@property (nonatomic, copy) NSString *leftSubTitle;
@property (nonatomic, strong)UIFont *leftSubTitleFont;
@property (nonatomic, strong) UIColor *leftSubTitleTextColor;
@property (nonatomic, assign)CGFloat bottomSpace;

@property (nonatomic, assign)BOOL displayArrow;//显示右侧箭头 default NO
@property (nonatomic, assign)BOOL displaySwitch;//显示开关 default NO

// =============== 系统默认cell右侧 =============== //
@property (nonatomic, copy)   NSString *indicatorLeftTitle;                      //右侧箭头左侧的文本，按需传入
@property (nonatomic, strong) UIColor *indicatorLeftLabelTextColor;              //右侧文字的颜色，存在默认设置，也可以自定义
@property (nonatomic, strong) UIFont *indicatorLeftLabelTextFont;                //右侧文字的字体，存在默认设置，也可以自定义
@property (nonatomic, strong) UIImage *indicatorLeftImage;                       //右侧箭头左侧的image，按需传入
@property (nonatomic, assign) CGSize indicatorLeftImageSize;                     //右侧尖头左侧image大小，存在默认设置，也可以自定义

@property (nonatomic, assign, readonly)  BOOL hasIndicatorImageAndLabel;         //右侧尖头左侧的文本和image是否同时存在，只能通过内部计算

@property (nonatomic, assign) CGFloat indicatorLeftImageAndLabelGap;             //右侧尖头左侧image和label的距离，存在默认值
@property (nonatomic, assign) BOOL isImageFirst;                                 //右侧尖头左侧的文本和image同时存在时，是否是image挨着箭头，默认为YES
@property (nonatomic, copy) SwitchValueChagedBlock switchValueDidChangeBlock;    //切换switch开关的时候调用的block


// =============== 长宽数据 =============== //
@property (nonatomic, assign) CGFloat cellHeight;                                //cell高度,默认是44，可以设置
@property (nonatomic, assign) CGSize  leftTitleLabelSize;                        //左侧默认Label的size，传入text以后内部计算
@property (nonatomic, assign) CGSize  indicatorLeftLabelSize;                    //右侧label的size

@end
