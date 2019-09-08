//
//  NowView.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "NowView.h"

@implementation NowView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    _nowImage = [[UIImageView alloc]init];
    [self addSubview:_nowImage];
    
    _nowLabel = [[UILabel alloc]init];
    [self addSubview:_nowLabel];
    
    _nowButton = [[UIButton alloc]init];
    [self addSubview:_nowButton];
    
    return self;
}

- (void)layoutSubviews {
    [_nowImage setImage:[UIImage imageNamed:@"0A5408D6F1E7C3E4A0649AD980797367"]];
    _nowImage.frame = CGRectMake(0, 0, 115, 160);
    
    _nowLabel.frame = CGRectMake(0, 160, 115, 40);
    _nowLabel.text = @"罗小黑战记";
    
    _nowButton.frame = CGRectMake(0, 200, 70, 40);
    [_nowButton setTitle:@"购票" forState:UIControlStateNormal];
    [_nowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _nowButton.backgroundColor = [UIColor redColor];
    _nowButton.layer.borderColor = [[UIColor whiteColor]CGColor];
    _nowButton.layer.cornerRadius = 20;
    _nowButton.layer.masksToBounds = YES;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
