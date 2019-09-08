//
//  SecondView.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    _nowButton = [[UIButton alloc]init];
    [self addSubview:_nowButton];
    
    _willButton = [[UIButton alloc]init];
    [self addSubview:_willButton];
    
    _secondScrollView = [[UIScrollView alloc]init];
    [self addSubview:_secondScrollView];
   
    
    _nowScrollView = [[UIScrollView alloc]init];
    
    _willScrollView = [[UIScrollView alloc]init];
    
    return self;
}

- (void)layoutSubviews {
    _nowButton.frame = CGRectMake(10, 0, 100, 30);
    [_nowButton setTitle:@"正在热映" forState:UIControlStateNormal];
    _nowButton.tag = 10;
    [_nowButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_nowButton setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    
    _willButton.frame = CGRectMake(130, 0, 100, 30);
    [_willButton setTitle:@"即将上映" forState:UIControlStateNormal];
    _willButton.tag = 11;
    [_willButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_willButton setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    
    _secondScrollView.frame = CGRectMake(0, 30, 375, 300);
    _secondScrollView.contentSize = CGSizeMake(375 * 2, 300);
    _secondScrollView.tag = 1;
    _secondScrollView.pagingEnabled = YES;
    
    _nowScrollView.frame = CGRectMake(0, 30, 375, 300);
    _nowScrollView.contentSize = CGSizeMake(375, 300);
    _nowScrollView.tag = 2;
    [_secondScrollView addSubview:_nowScrollView];
    
    _willScrollView.frame = CGRectMake(375, 30, 375, 300);
    _willScrollView.contentSize = CGSizeMake(375, 300);
    _willScrollView.tag = 3;
    [_secondScrollView addSubview:_willScrollView];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
