//
//  ConfigureConst.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#ifndef ConfigureConst_h
#define ConfigureConst_h

//distance
#define SJScreenWidth      [UIScreen mainScreen].bounds.size.width
#define SJScreenHeight     [UIScreen mainScreen].bounds.size.height

#define CellHeight 44

#define CellTopSpace 8
#define CellSidleSpace 10
#define TitleAndIconSpace 10
#define TitleMaxW 180
#define RightLabelAndArrow 10
#define ArrowImageSize CGSizeMake(25,25)
//image
#define SJIndicatorArrow @"arrow"


//font
#define LeftTitleTextFont           [UIFont systemFontOfSize:15]
#define IndicatorLeftTitleTextFont  [UIFont systemFontOfSize:13]

//color
#define ColorWithRGB(R,G,B,A)           [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
#define LeftTitleTextColor              [UIColor blackColor]
#define IndicatorLeftTitleTextColor     ColorWithRGB(136,136,136,1)

#endif /* ConfigureConst_h */
