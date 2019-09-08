//
//  FirstTableViewCell.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _firstNameLabel = [[UILabel alloc]init];
    [self addSubview:_firstNameLabel];
    
    _firstImage = [[UIImageView alloc]init];
    [self addSubview:_firstImage];
    
    _firstLabel = [[UILabel alloc]init];
    [self addSubview:_firstLabel];
    
    return self;
}

- (void)layoutSubviews {
    _firstLabel.text = @"猫眼资讯";
    _firstLabel.frame = CGRectMake(0, 100, 100, 30);
    _firstNameLabel.text = @"《我在未来等你》";
    _firstNameLabel.frame = CGRectMake(0, 0, 375, 40);
    _firstImage.image = [UIImage imageNamed:@"guanzhu_img5"];
    _firstImage.frame = CGRectMake(0, 40, 60, 60);
}

@end
