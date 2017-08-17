//
//  Factory.m
//  SSJStaticTableViewDemo
//
//  Created by Sun Shijie on 2017/3/15.
//  Copyright © 2017年 Shijie. All rights reserved.
//

#import "Factory.h"
#import "ZFStaticTableViewCellViewModel.h"
#import "ZFStaticTableViewSectionViewModel.h"
@implementation Factory
+(NSArray *)momentsPageData{
    ZFStaticTableViewCellViewModel *row0 = [ZFStaticTableViewCellViewModel new];
    row0.leftTitle = @"朋友圈";
    row0.leftImage = [UIImage imageNamed:@"MoreGame"];
    
    ZFStaticTableViewCellViewModel *row1 = [ZFStaticTableViewCellViewModel new];
    row1.leftTitle = @"朋友圈";
    row1.leftImage = [UIImage imageNamed:@"MoreGame"];
    row1.displayArrow = YES;
    
    ZFStaticTableViewCellViewModel *row2 = [ZFStaticTableViewCellViewModel new];
    row2.leftTitle = @"朋友圈";
    row2.leftImage = [UIImage imageNamed:@"MoreGame"];
    row2.displayArrow = YES;
    row2.indicatorLeftTitle = @"游戏";
    
    ZFStaticTableViewSectionViewModel *section0 = [[ZFStaticTableViewSectionViewModel alloc] initWithCellViewModelsArray:@[row0,row1,row2]];
    
    ZFStaticTableViewSectionViewModel *section1 = [[ZFStaticTableViewSectionViewModel alloc] initWithCellViewModelsArray:@[row0,row1,row2]];

    
    return @[section0,section1];

    
}
@end
