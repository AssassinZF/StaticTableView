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

#define SJTopGap 8               //same as bottom gap
#define SJLeftGap 12             //same as right gap
#define SJLeftMiddleGap 10        //in left  part: the gap between image and label
#define SJRightMiddleGap 6       //in right part: the gap between image and label
#define SJImgWidth 30
#define SJTitleWidthLimit 180


//image
#define SJIndicatorArrow @"arrow"


//font
#define SJLeftTitleTextFont           [UIFont systemFontOfSize:15]
#define SJLogoutButtonFont            [UIFont systemFontOfSize:16]
#define SJIndicatorLeftTitleTextFont  [UIFont systemFontOfSize:13]

//color
#define SJColorWithRGB(R,G,B,A)           [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
#define SJLeftTitleTextColor              [UIColor blackColor]
#define SJIndicatorLeftTitleTextColor     SJColorWithRGB(136,136,136,1)


#endif /* ConfigureConst_h */
