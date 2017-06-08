//
//  SJCustomCellsViewController.m
//  SSJStaticTableViewDemo
//
//  Created by Sun Shijie on 2017/3/18.
//  Copyright © 2017年 Shijie. All rights reserved.
//

#import "SJCustomCellsViewController.h"
#import "Factory.h"


@interface SJCustomCellsViewController ()

@end

@implementation SJCustomCellsViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
     self.navigationItem.title = @"定制cell页面 - 分组";
}


- (void)configureDataSource
{
    self.dataSource = [[ZFStaticTableViewDataSource alloc] initWithViewModelsArray:[Factory customCellsPageData] configureBlock:^(ZFStaticTableViewCell *cell, ZFStaticTableViewCellViewModel *viewModel) {
        
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
