//
//  MeViewController.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/8.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "MeViewController.h"
#import "Factory.h"
#import "ZFStaticTableViewCell+MeAvatar.h"
#import "SJSettingViewController.h"
#import "SJInfoViewController.h"
#import "SJEmoticonViewController.h"


@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureDataSource
{
    self.dataSource = [[ZFStaticTableViewDataSource alloc] initWithViewModelsArray:[Factory mePageData] configureBlock:^(ZFStaticTableViewCell *cell, ZFStaticTableViewCellViewModel *viewModel) {
        
        switch (viewModel.staticCellType) {
                
            case SJStaticCellTypeSystemAccessoryDisclosureIndicator:
            {
                [cell configureAccessoryDisclosureIndicatorCellWithViewModel:viewModel];
            }
                break;
                
            case SJStaticCellTypeMeAvatar:
            {
                [cell configureMeAvatarTableViewCellWithViewModel:viewModel];
            }
                break;
                
            default:
                break;
        }
    }];
}

- (void)didSelectViewModel:(ZFStaticTableViewCellViewModel *)viewModel atIndexPath:(NSIndexPath *)indexPath
{
    
    switch (viewModel.identifier)
    {
        case 0:
        {
            NSLog(@"跳转到详情页");
            SJInfoViewController *vc = [[SJInfoViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
            
        case 5:
        {
            NSLog(@"跳转到表情页");
            SJEmoticonViewController *vc = [[SJEmoticonViewController alloc] initWithDefaultDataType:ZFDefaultDataNone];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        case 7:
        {
            NSLog(@"跳转到设置页");
            SJSettingViewController *vc = [[SJSettingViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
            
        default:
            break;
    }
}

@end
