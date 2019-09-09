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

@interface MovieViewController ()<UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>

@property (nonatomic, strong)SecondView *secondView;
@property (nonatomic, strong)FirstView *firstView;
@property (nonatomic, strong)UITableView *thirdTableView;

@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *headView = [[UIView alloc]init];
    headView.frame = CGRectMake(0, 0, 375, 584);
    
    _firstView = [[FirstView alloc]init];
    _firstView.frame = CGRectMake(0, 0, 375, 264);
    _firstView.firstSearchBar.delegate = self;
    _firstView.firstSearchBar.enablesReturnKeyAutomatically = NO;
    [headView addSubview:_firstView];
    
    _secondView = [[SecondView alloc]init];
    _secondView.frame = CGRectMake(0, 264, 375, 320);
    
    [_secondView.secondSegmentedControl addTarget:self action:@selector(changeTableView:) forControlEvents:UIControlEventValueChanged];
    
    for (int i = 0; i < 4; i++) {
        NowView *now = [[NowView alloc]init];
        now.frame = CGRectMake(115 * i, 0, 115, 300);
        [_secondView.nowScrollView addSubview:now];
    }
    
    for (int i = 0; i < 4; i++) {
        WillView *will = [[WillView alloc]init];
        will.frame = CGRectMake(115 * i, 0, 115, 300);
        [_secondView.willScrollView addSubview:will];
    }
    
    [headView addSubview:_secondView];
    
    
    
    _thirdTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 812) style:UITableViewStylePlain];
    [self.view addSubview:_thirdTableView];
    _thirdTableView.tableHeaderView = headView;
    _thirdTableView.delegate = self;
    _thirdTableView.dataSource = self;
    [_thirdTableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:str1];
    [_thirdTableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:str2];
}

/*---------------------选择卡-----------------------*/
- (void)changeTableView:(UISegmentedControl *)segmentedControl{
    if (segmentedControl.selectedSegmentIndex == 0) {
        [_secondView.secondScrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    else if (segmentedControl.selectedSegmentIndex == 1) {
        [_secondView.secondScrollView setContentOffset:CGPointMake(375, 0) animated:YES];
    }
}

/*---------------------滚动视图-----------------------*/
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (scrollView.tag == 1) {
        if (scrollView.contentOffset.x == 0) {
            _secondView.secondSegmentedControl.selectedSegmentIndex = 0;
        }
        else if (scrollView.contentOffset.x == 375) {
            _secondView.secondSegmentedControl.selectedSegmentIndex = 1;
        }
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

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [_firstView.firstSearchBar resignFirstResponder];
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
