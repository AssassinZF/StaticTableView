//
//  ZFStaticTableViewCell.m
//  CommonStaticTableView
//
//  Created by zhanfeng on 2017/6/7.
//  Copyright © 2017年 lzf. All rights reserved.
//

#import "ZFStaticTableViewCell.h"
#import "ZFStaticTableViewCellViewModel.h"

@implementation ZFStaticTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)configureDefaultCellWithModel:(ZFStaticTableViewCellViewModel *)viewModel{
    
    _viewModel = viewModel;
    
    //left image
    if (self.viewModel.leftImage) {
        [self.contentView addSubview:self.leftImageView];
        self.leftImageView.image = self.viewModel.leftImage;
        self.leftImageView.frame = CGRectMake(viewModel.leftImageSpace, (self.viewModel.cellHeight - self.viewModel.leftImageSize.height)/2, self.viewModel.leftImageSize.width , self.viewModel.leftImageSize.height);
    }
    
    if (self.viewModel.leftTitle.length > 0) {
        [self.contentView addSubview:self.leftTitleLabel];
        self.leftTitleLabel.font = self.viewModel.leftLabelTextFont;
        self.leftTitleLabel.textColor = self.viewModel.leftLabelTextColor;
        self.leftTitleLabel.text = self.viewModel.leftTitle;
        
        CGFloat x = 0;
        if (_leftImageView) {
            x = CGRectGetMaxX(self.leftImageView.frame) + self.viewModel.leftTitleSpace;
        }else{
            x = CellSidleSpace;
        }
        
        self.leftTitleLabel.frame = CGRectMake( x, (self.viewModel.cellHeight - self.viewModel.leftTitleLabelSize.height)/2, self.viewModel.leftTitleLabelSize.width, self.viewModel.leftTitleLabelSize.height);
        
        if (self.viewModel.leftSubTitle.length>0) {
            [self.contentView addSubview:self.leftSubTitleLabel];
            self.leftSubTitleLabel.text = self.viewModel.leftSubTitle;
            self.leftSubTitleLabel.textColor = self.viewModel.leftSubTitleTextColor;
            self.leftSubTitleLabel.font = self.viewModel.leftSubTitleFont;
            
            CGRect frame = self.leftTitleLabel.frame;
            frame.origin.y = CGRectGetMaxY(frame);
            self.leftSubTitleLabel.frame = frame;
        }
    }
    if (self.viewModel.displayArrow) {
        [self.contentView addSubview:self.indicatorArrow];
    }
    if (self.viewModel.displaySwitch) {
        [self.contentView addSubview:self.indicatorSwitch];
    }
    
    if (self.viewModel.indicatorLeftTitle.length>0) {
        [self.contentView addSubview:self.rightSubLabel];
        self.rightSubLabel.text = self.viewModel.indicatorLeftTitle;
        self.rightSubLabel.textColor = self.viewModel.indicatorLeftLabelTextColor;
        self.rightSubLabel.font = self.viewModel.indicatorLeftLabelTextFont;
        CGFloat x = self.viewModel.displayArrow?self.indicatorArrow.frame.origin.x:self.contentView.frame.size.width;
        self.rightSubLabel.frame = CGRectMake(x - CellSidleSpace - self.viewModel.indicatorLeftLabelSize.width  , (self.viewModel.cellHeight - self.viewModel.indicatorLeftLabelSize.height)/2, self.viewModel.indicatorLeftLabelSize.width, self.viewModel.indicatorLeftLabelSize.height);
    }
    
}

#pragma mark- switch block
- (void)switchTouched:(UISwitch *)indicatorSwitch
{
    if (self.viewModel.switchValueDidChangeBlock){
        self.viewModel.switchValueDidChangeBlock(indicatorSwitch.isOn);
    }
}


- (UIImageView *)leftImageView
{
    if (!_leftImageView) {
        _leftImageView = [[UIImageView alloc] init];
    }
    return _leftImageView;
}

- (UILabel *)leftTitleLabel
{
    if (!_leftTitleLabel) {
        _leftTitleLabel= [[UILabel alloc] init];
    }
    return _leftTitleLabel;
}

-(UILabel *)leftSubTitleLabel{
    if (!_leftSubTitleLabel) {
        _leftSubTitleLabel= [[UILabel alloc] init];
    }
    return _leftSubTitleLabel;
}


- (UISwitch *)indicatorSwitch
{
    if (!_indicatorSwitch) {
        _indicatorSwitch = [[UISwitch alloc] init];
        _indicatorSwitch.frame = CGRectMake(SJScreenWidth - CellSidleSpace - _indicatorSwitch.bounds.size.width, (_viewModel.cellHeight -  _indicatorSwitch.bounds.size.height)/2, _indicatorSwitch.bounds.size.width, _indicatorSwitch.bounds.size.height);
        [_indicatorSwitch addTarget:self action:@selector(switchTouched:) forControlEvents:UIControlEventValueChanged];
        
    }
    return _indicatorSwitch;
}

- (UIImageView *)indicatorArrow
{
    if (!_indicatorArrow) {
        _indicatorArrow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:SJIndicatorArrow]];
        _indicatorArrow.frame = CGRectMake(SJScreenWidth - CellSidleSpace - _indicatorArrow.bounds.size.width, (_viewModel.cellHeight - _indicatorArrow.bounds.size.height)/2, _indicatorArrow.bounds.size.width, _indicatorArrow.bounds.size.height);
    }
    return _indicatorArrow;
}

- (UILabel *)rightSubLabel
{
    if (!_rightSubLabel) {
        _rightSubLabel= [[UILabel alloc] init];
    }
    return _rightSubLabel;
}

- (UIImageView *)rightImageView
{
    if (!_rightImageView) {
        _rightImageView = [[UIImageView alloc] init];
    }
    return _rightImageView;
}

@end
