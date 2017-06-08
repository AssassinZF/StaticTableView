//
//  ZFStaticTableView.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ZFStaticTableView.h"
#import "ZFStaticTableViewCellViewModel.h"
#import "ZFStaticTableViewSectionViewModel.h"

@implementation ZFStaticTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.autoresizingMask =  UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.backgroundColor = SJColorWithRGB(240, 239, 245, 1);
        self.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
        self.delegate = self;
    }
    return self;
}


-(void)setZfDataSource:(id<ZFStaticTableViewDataSource>)zfDataSource{
    _zfDataSource = zfDataSource;
    self.dataSource = _zfDataSource;
}

#pragma mark - Tableview Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZFStaticTableViewCellViewModel *cellViewModel = [self.zfDataSource tableView:tableView cellViewModelAtIndexPath:indexPath];
    return cellViewModel.cellHeight;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    ZFStaticTableViewSectionViewModel *sectionViewModel = [self.zfDataSource tableView:tableView sectionViewModelInSection:section];
    return sectionViewModel.sectionHeaderHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    ZFStaticTableViewSectionViewModel *sectionViewModel = [self.zfDataSource tableView:tableView sectionViewModelInSection:section];
    return sectionViewModel.sectionFooterHeight;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if ((self.zfDelegate) && [self.zfDelegate respondsToSelector:@selector(didSelectViewModel:atIndexPath:)]) {
        
        ZFStaticTableViewCellViewModel *cellViewModel = [self.zfDataSource tableView:tableView cellViewModelAtIndexPath:indexPath];
        [self.zfDelegate didSelectViewModel:cellViewModel atIndexPath:indexPath];
        
    }else if((self.zfDelegate)&& [self.zfDelegate respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:)]){
        
//        [self.zfDelegate tableView:tableView didSelectRowAtIndexPath:indexPath];
        
    }
}


@end
