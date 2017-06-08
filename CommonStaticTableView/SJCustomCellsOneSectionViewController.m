//
//  SJCustomCellsOneSectionViewController.m
//  SSJStaticTableViewDemo
//
//  Created by Sun Shijie on 2017/3/18.
//  Copyright © 2017年 Shijie. All rights reserved.
//

#import "SJCustomCellsOneSectionViewController.h"
#import "Factory.h"

@interface SJCustomCellsOneSectionViewController ()

@end

@implementation SJCustomCellsOneSectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)configureDataSource
{
    self.dataSource = [[ZFStaticTableViewDataSource alloc] initWithViewModelsArray:[Factory customCellsOneSectionPageData] configureBlock:^(ZFStaticTableViewCell *cell, ZFStaticTableViewCellViewModel *viewModel) {
        
        switch (viewModel.staticCellType)
        {
            case SJStaticCellTypeSystemAccessoryDisclosureIndicator:
            {
                [cell configureAccessoryDisclosureIndicatorCellWithViewModel:viewModel];
            }
                break;
                
            default:
                break;
        }
    }];
}


@end
