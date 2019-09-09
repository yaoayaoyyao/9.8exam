//
//  FirstView.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    _firstSearchBar = [[UISearchBar alloc]init];
    [self addSubview:_firstSearchBar];
    
    _firstImage = [[UIImageView alloc]init];
    [self addSubview:_firstImage];
    
    return self;
}

- (void)layoutSubviews {
    _firstSearchBar.frame = CGRectMake(0, 10, 375, 40);
    _firstSearchBar.placeholder = @"找影视剧、影人、影院、演出、图书";
    
    _firstImage.frame = CGRectMake(0, 50, 375, 214);
    _firstImage.image = [UIImage imageNamed:@"111"];
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
