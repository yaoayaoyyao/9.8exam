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
    
    _secondSegmentedControl = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"正在热映", @"即将上映", nil]];
    
    _secondScrollView = [[UIScrollView alloc]init];
    [self addSubview:_secondScrollView];
    
    _nowScrollView = [[UIScrollView alloc]init];
    
    _willScrollView = [[UIScrollView alloc]init];
    
    return self;
}

- (void)layoutSubviews {

    _secondSegmentedControl.frame = CGRectMake(10, 0, 200, 30);
    [self addSubview:_secondSegmentedControl];
    _secondSegmentedControl.selectedSegmentIndex = 0;
    //在点击后是否恢复原样
    _secondSegmentedControl.momentary = NO;
    _secondSegmentedControl.layer.borderColor = [[UIColor clearColor]CGColor];
    _secondSegmentedControl.tintColor = [UIColor clearColor];
    [_secondSegmentedControl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor] , NSFontAttributeName:[UIFont fontWithName:@"Helvetica" size:20]} forState:UIControlStateNormal];
    [_secondSegmentedControl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor], NSFontAttributeName:[UIFont fontWithName:@"Helvetica" size:20]} forState:UIControlStateSelected];
    
    _secondScrollView.frame = CGRectMake(0, 10, 375, 300);
    _secondScrollView.contentSize = CGSizeMake(375, 300);
    _secondScrollView.tag = 1;
    _secondScrollView.pagingEnabled = YES;
    
    _nowScrollView.frame = CGRectMake(0, 30, 375, 300);
    _nowScrollView.contentSize = CGSizeMake(450, 300);
    _nowScrollView.tag = 2;
    [_secondScrollView addSubview:_nowScrollView];
    
    _willScrollView.frame = CGRectMake(375, 30, 375, 300);
    _willScrollView.contentSize = CGSizeMake(450, 300);
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
