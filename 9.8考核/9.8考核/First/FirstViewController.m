//
//  FirstViewController.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "FirstViewController.h"
#import "MovieViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *rightbtn = [[UIBarButtonItem alloc]initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(pushClick)];
    [rightbtn setTintColor:[UIColor blackColor]];
    self.navigationItem.rightBarButtonItem = rightbtn;
    
}

- (void)pushClick {
    MovieViewController *movieViewController = [[MovieViewController alloc]init];
    self.hidesBottomBarWhenPushed = YES;
    movieViewController.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:movieViewController animated:YES];
}

- (void)viewDidDisappear:(BOOL)animated{
    self.hidesBottomBarWhenPushed = NO;
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
