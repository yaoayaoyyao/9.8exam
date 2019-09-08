//
//  MovieViewController.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "MovieViewController.h"
#import "FirstView.h"
#import "SecondView.h"
#import "NowView.h"
#import "WillView.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"

static NSString *str1 = @"FirstTableViewCell";
static NSString *str2 = @"SecondTableViewCell";

@interface MovieViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)SecondView *secondView;
@property (nonatomic, strong)FirstView *firstView;
@property (nonatomic, strong)UITableView *thirdTableView;

@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *headView = [[UIView alloc]init];
    headView.frame = CGRectMake(0, 0, 375, 580);
    
    _firstView = [[FirstView alloc]init];
    _firstView.frame = CGRectMake(0, 0, 375, 254);
    [headView addSubview:_firstView];
    
    _secondView = [[SecondView alloc]init];
    _secondView.frame = CGRectMake(0, 254, 375, 300);
    NowView *now = [[NowView alloc]init];
    now.frame = CGRectMake(0, 0, 115, 300);
    [_secondView.nowScrollView addSubview:now];
    
    WillView *will = [[WillView alloc]init];
    will.frame = CGRectMake(0, 0, 115, 300);
    [_secondView.willScrollView addSubview:will];
    [_secondView.willButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [_secondView.nowButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [headView addSubview:_secondView];
    
    
    
    _thirdTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 1111) style:UITableViewStylePlain];
    [self.view addSubview:_thirdTableView];
    _thirdTableView.tableHeaderView = headView;
    _thirdTableView.delegate = self;
    _thirdTableView.dataSource = self;
    [_thirdTableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:str1];
    [_thirdTableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:str2];
}

- (void)click:(UIButton *)btn {
    if (btn.tag == 10) {
        _secondView.secondScrollView.contentOffset = CGPointMake(0, 0);
    }
    if (btn.tag == 11) {
        _secondView.secondScrollView.contentOffset = CGPointMake(375, 0);
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 10;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section % 2 == 0) {
        return 150;
    }
    else {
        return 290;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section % 2 == 0) {
        FirstTableViewCell *firstTableViewCell = [_thirdTableView dequeueReusableCellWithIdentifier:str1 forIndexPath:indexPath];
        return firstTableViewCell;
    }
    else {
        SecondTableViewCell *secondTableViewCell = [_thirdTableView dequeueReusableCellWithIdentifier:str2 forIndexPath:indexPath];
        return secondTableViewCell;
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
