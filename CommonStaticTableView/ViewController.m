//
//  ViewController.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "MeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self networkRequest];
}

- (void)networkRequest
{
    //模拟网络请求
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        //请求成功
        NSDictionary *responseDict = @{@"title_info":@"新游戏上架啦",
                                       @"title_icon":@"game_1",
                                       @"game_info":@"一起来玩斗地主呀！",
                                       @"game_icon":@"doudizhu"
                                       };
        //将要刷新cell的indexPath
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:1 inSection:3];
        
        //获取cell对应的viewModel
        ZFStaticTableViewCellViewModel *viewModel = [self.dataSource tableView:self.tableView cellViewModelAtIndexPath:indexPath];
        
        if (viewModel) {
            //更新viewModel
            viewModel.leftTitle = responseDict[@"title_info"];
            viewModel.leftImage = [UIImage imageNamed:responseDict[@"title_icon"]];
            viewModel.indicatorLeftImage = [UIImage imageNamed:responseDict[@"game_icon"]];
            viewModel.indicatorLeftTitle = responseDict[@"game_info"];
            
            //刷新tableview
            [self.tableView reloadData];
        }
    });
}

-(void)configureDataSource{
    self.dataSource = [[ZFStaticTableViewDataSource alloc] initWithViewModelsArray:[Factory momentsPageData] configureBlock:^(ZFStaticTableViewCell *cell, ZFStaticTableViewCellViewModel *viewModel) {
        
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

-(void)didSelectViewModel:(ZFStaticTableViewCellViewModel *)viewModel atIndexPath:(NSIndexPath *)indexPath{
    MeViewController *vc = [[MeViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
