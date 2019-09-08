//
//  SecondTableViewCell.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _secondNameLabel = [[UILabel alloc]init];
    [self addSubview:_secondNameLabel];
    
    _secondImage = [[UIImageView alloc]init];
    [self addSubview:_secondImage];
    
    _secondLabel = [[UILabel alloc]init];
    [self addSubview:_secondLabel];
    
    return self;
}

- (void)layoutSubviews {
    _secondLabel.text = @"预告片资讯";
    _secondLabel.frame = CGRectMake(0, 240, 100, 30);
    _secondNameLabel.text = @"高燃";
    _secondNameLabel.frame = CGRectMake(0, 0, 375, 40);
    _secondImage.image = [UIImage imageNamed:@"main_img2"];
    _secondImage.frame = CGRectMake(0, 40, 375, 200);
}

@end
