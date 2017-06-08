//
//  SJInfoViewController.m
//  SSJStaticTableViewDemo
//
//  Created by Sun Shijie on 2017/3/16.
//  Copyright © 2017年 Shijie. All rights reserved.
//

#import "SJInfoViewController.h"
#import "Factory.h"

@interface SJInfoViewController ()

@end

@implementation SJInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.navigationItem.title = @"个人信息";
}



- (void)configureDataSource
{
    self.dataSource = [[ZFStaticTableViewDataSource alloc] initWithViewModelsArray:[Factory infoPageData] configureBlock:^(ZFStaticTableViewCell *cell, ZFStaticTableViewCellViewModel *viewModel) {
        
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
