//
//  ZFStaticTableViewDataSource.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ZFStaticTableViewDataSource.h"
#import "ZFStaticTableViewCellViewModel.h"
#import "ZFStaticTableViewSectionViewModel.h"
#import "ZFStaticTableViewCell.h"

@interface ZFStaticTableViewDataSource()
@property (nonatomic, copy) ZFStaticCellConfigureBlock cellConfigureBlock;
@end

@implementation ZFStaticTableViewDataSource

- (instancetype)initWithViewModelsArray:(NSArray *)viewModelsArray configureBlock:(ZFStaticCellConfigureBlock)block
{
    self = [super init];
    if (self) {
        self.viewModelsArray = viewModelsArray;
        self.cellConfigureBlock = [block copy];
    }
    return self;
}

#pragma mark- ZFStaticTableViewDataSource
- (ZFStaticTableViewCellViewModel *)tableView:(UITableView *)tableview cellViewModelAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.viewModelsArray.count > indexPath.section) {
        ZFStaticTableViewSectionViewModel *sectionViewModel = [self.viewModelsArray objectAtIndex:indexPath.section];
        if (sectionViewModel.cellViewModelsArray.count > indexPath.row) {
            return [sectionViewModel.cellViewModelsArray objectAtIndex:indexPath.row];
        }
    }
    return nil;
}

- (ZFStaticTableViewSectionViewModel *)tableView:(UITableView *)tableView sectionViewModelInSection:(NSInteger )section
{
    if (self.viewModelsArray.count > section) {
        return [self.viewModelsArray objectAtIndex:section];
    }
    return nil;
}

#pragma mark - Tableview Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.viewModelsArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    ZFStaticTableViewSectionViewModel *vm = self.viewModelsArray[section];
    return vm.cellViewModelsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ZFStaticTableViewSectionViewModel *sectionViewModel = self.viewModelsArray[indexPath.section];
    ZFStaticTableViewCellViewModel *cellViewModel = sectionViewModel.cellViewModelsArray[indexPath.row];
    
    ZFStaticTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellViewModel.cellID];
    if (!cell) {
        cell = [[ZFStaticTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellViewModel.cellID];
    }
    self.cellConfigureBlock(cell,cellViewModel);
    
    return cell;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    ZFStaticTableViewSectionViewModel *vm = self.viewModelsArray[section];
    return vm.sectionHeaderTitle;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    ZFStaticTableViewSectionViewModel *vm = self.viewModelsArray[section];
    return vm.sectionFooterTitle;
}



@end
