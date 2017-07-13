//
//  myview.m
//  lazyAdd
//
//  Created by 刘梓轩 on 2017/7/13.
//  Copyright © 2017年 MIKEz. All rights reserved.
//
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"
#import "myview.h"

@implementation myview
-(UIView *)lineView{
    if (_lineView == nil) {
        _lineView = [UIView new];
        _lineView.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1/1.0];
        
    }
    [self addSubview:_lineView];
    [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(50);
        make.left.right.equalTo(0);
        make.height.equalTo(1);
    }];
    return _lineView;
    
}

-(UILabel *)saleAcount{
    if(_saleAcount == nil){
        _saleAcount = [UILabel new];
        _saleAcount.font = [UIFont fontWithName:@"PingFangSC-Medium" size:21];
        _saleAcount.textColor = [UIColor colorWithRed:116/255.0 green:95/255.0 blue:110/255.0 alpha:1/1.0];
        _saleAcount.textAlignment = NSTextAlignmentCenter;
    }
    [self addSubview:_saleAcount];
    [_saleAcount mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lineView.mas_bottom).equalTo(17);
        make.left.equalTo(8);
        make.height.equalTo(18);
        make.width.equalTo(150);
        
    }];
    [self saleAcountTitle];
    return _saleAcount;
    
    
}
-(UILabel *)saleAcountTitle{
    if(_saleAcountTitle == nil){
        _saleAcountTitle = [UILabel new];
        _saleAcountTitle.textAlignment = NSTextAlignmentCenter;
        _saleAcountTitle.text = @"总单量";
        _saleAcountTitle.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _saleAcountTitle.textColor = [UIColor colorWithRed:199/255.0 green:202/255.0 blue:217/255.0 alpha:1/1.0];
        
    }
    [self addSubview:_saleAcountTitle];
    [_saleAcountTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_saleAcount.mas_bottom).equalTo(8);
        make.left.right.equalTo(_saleAcount);
        make.height.equalTo(18);
    }];
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor colorWithRed:215/255.0 green:221/255.0 blue:226/255.0 alpha:1/1.0];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(1, 18));
        make.top.equalTo(_saleAcountTitle);
        make.left.equalTo(_saleAcountTitle.mas_right).equalTo(4);
    }];
    
    return _saleAcountTitle;
    
}


@end
