//
//  ZFStaticTableViewSectionViewModel.h
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZFStaticTableViewSectionViewModel : NSObject
@property (nonatomic, copy)   NSString *sectionHeaderTitle;         //该section的标题
@property (nonatomic, copy)   NSString *sectionFooterTitle;         //该section的标题
@property (nonatomic, strong) NSMutableArray  *cellViewModelsArray;        //该section的数据源

@property (nonatomic, assign) CGFloat  sectionHeaderHeight;         //header的高度
@property (nonatomic, assign) CGFloat  sectionFooterHeight;         //footer的高度

@end
