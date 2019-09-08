//
//  LoginViewController.m
//  9.8考核
//
//  Created by 沈君瑶 on 2019/9/8.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "LoginViewController.h"
#import "SighUpViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"

static NSString *strName;
static NSString *strPassword;

@interface LoginViewController () <UITextFieldDelegate,SighUpViewControllerDelegate>

@property (nonatomic, strong)UITextField *userName;
@property (nonatomic, strong)UITextField *userPassword;
@property (nonatomic, strong)UIButton *loginButton;
@property (nonatomic, strong)UIButton *sighUpButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _userName = [[UITextField alloc]initWithFrame:CGRectMake(87, 100, 201, 40)];
    [self.view addSubview:_userName];
    _userName.placeholder = @"请输入用户名";
    _userName.delegate = self;
    _userName.borderStyle = UITextBorderStyleBezel;
    
    _userPassword = [[UITextField alloc]initWithFrame:CGRectMake(87, 160, 201, 40)];
    [self.view addSubview:_userPassword];
    _userPassword.placeholder = @"请输入密码";
    _userPassword.delegate = self;
    _userPassword.borderStyle = UITextBorderStyleBezel;
    _userPassword.secureTextEntry = YES;
    
    _loginButton = [[UIButton alloc]initWithFrame:CGRectMake(137, 210, 101, 40)];
    [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [self.view addSubview:_loginButton];
    [_loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_loginButton addTarget:self action:@selector(loginClick) forControlEvents:UIControlEventTouchUpInside];
    
    _sighUpButton = [[UIButton alloc]initWithFrame:CGRectMake(137, 260, 101, 40)];
    [_sighUpButton setTitle:@"注册" forState:UIControlStateNormal];
    [self.view addSubview:_sighUpButton];
    [_sighUpButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_sighUpButton addTarget:self action:@selector(sighUpClick) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)loginClick {
    if (([_userName.text isEqualToString:@"IOSnb123"] && [_userPassword.text isEqualToString:@"123456789"]) || ([_userName.text isEqualToString:strName] && [_userPassword.text isEqualToString:strPassword])) {
        
        FirstViewController *firstViewController = [[FirstViewController alloc]init];
        firstViewController.title = @"视图1";
        firstViewController.view.backgroundColor = [UIColor whiteColor];
        UINavigationController *firstNavigationController = [[UINavigationController alloc]initWithRootViewController:firstViewController];
        
        SecondViewController *secondViewController = [[SecondViewController alloc]init];
        secondViewController.title = @"视图2";
        secondViewController.view.backgroundColor = [UIColor whiteColor];
        UINavigationController *secondNavigationController = [[UINavigationController alloc]initWithRootViewController:secondViewController];
        
        ThirdViewController *thirdViewController = [[ThirdViewController alloc]init];
        thirdViewController.title = @"视图3";
        thirdViewController.view.backgroundColor = [UIColor whiteColor];
        UINavigationController *thirdNavigationController = [[UINavigationController alloc]initWithRootViewController:thirdViewController];
        
        FourViewController *fourViewController = [[FourViewController alloc]init];
        fourViewController.title = @"视图4";
        fourViewController.view.backgroundColor = [UIColor whiteColor];
        UINavigationController *fourNavigationController = [[UINavigationController alloc]initWithRootViewController:fourViewController];
        
        FiveViewController *fiveViewController = [[FiveViewController alloc]init];
        fiveViewController.title = @"视图5";
        fiveViewController.view.backgroundColor = [UIColor whiteColor];
        UINavigationController *fiveNavigationController = [[UINavigationController alloc]initWithRootViewController:fiveViewController];
        
        NSArray *array = @[firstNavigationController, secondNavigationController, thirdNavigationController, fourNavigationController, fiveNavigationController];
        
        UITabBarController *TBC = [[UITabBarController alloc]init];
        TBC.viewControllers = array;
        [self presentViewController:TBC animated:YES completion:nil];
    }
}

- (void)Name:(NSString *)name andPassword:(NSString *)password {
    _userName.text = name;
    _userPassword.text = password;
    strName = name;
    strPassword = password;
}

- (void)sighUpClick {
    SighUpViewController *sighUpViewController = [[SighUpViewController alloc]init];
    sighUpViewController.delegate = self;
    [self presentViewController:sighUpViewController animated:YES completion:nil];
    [_userName resignFirstResponder];
    [_userPassword resignFirstResponder];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_userName resignFirstResponder];
    [_userPassword resignFirstResponder];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_userName resignFirstResponder];
    [_userPassword resignFirstResponder];
    return YES;
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
