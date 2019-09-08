//
//  WillView.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "WillView.h"

@implementation WillView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    _willImage = [[UIImageView alloc]init];
    [self addSubview:_willImage];
    
    _willLabel = [[UILabel alloc]init];
    [self addSubview:_willLabel];
    
    _willTimeLabel = [[UILabel alloc]init];
    [self addSubview:_willTimeLabel];
    
    return self;
}

- (void)layoutSubviews {
    [_willImage setImage:[UIImage imageNamed:@"11694888F8019C4B7971FA75CC26F8F3"]];
    _willImage.frame = CGRectMake(0, 0, 115, 160);
    
    _willLabel.frame = CGRectMake(0, 160, 115, 40);
    _willLabel.text = @"罗小黑战记";
    
    _willTimeLabel.frame = CGRectMake(5, 200, 70, 40);
    _willTimeLabel.text = @"9月30日";
    _willTimeLabel.textColor = [UIColor grayColor];
    _willTimeLabel.layer.borderWidth = 1;
    _willTimeLabel.layer.borderColor = [[UIColor blackColor]CGColor];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
