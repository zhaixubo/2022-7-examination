//
//  LoginViewController.m
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    _FirstTextField = [[UITextField alloc] init];
    _FirstTextField.frame = CGRectMake(100, 300, 230, 50);
    _FirstTextField.backgroundColor = [UIColor whiteColor];
    _FirstTextField.placeholder = @"请输入账号";
    [self.view addSubview:_FirstTextField];
    
    _SecondTextField = [[UITextField alloc] init];
    _SecondTextField.frame = CGRectMake(100, 420, 230, 50);
    _SecondTextField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_SecondTextField];
    
    _leftButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_leftButton setTitle:@"登录" forState:UIControlStateNormal];
    _leftButton.frame = CGRectMake(100, 500, 100, 80);
    [_leftButton addTarget:self action:@selector(pressdenglu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_leftButton];
    
    _rightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_rightButton setTitle:@"注册" forState:UIControlStateNormal];
    _rightButton.frame = CGRectMake(230, 500, 100, 80);
    [_rightButton addTarget:self action:@selector(presszhuce) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_rightButton];
    
    _ZhanghaoArray = [[NSMutableArray alloc] init];
    _MiMaArray = [[NSMutableArray alloc] init];
    
}

- (void)presszhuce {
    RegisterViewController *registerViewController = [[RegisterViewController alloc] init];
    registerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    registerViewController.delegate = self;
    [self presentViewController:registerViewController animated:YES completion:nil];
}
- (void)Register:(NSMutableArray *)ZhanghaoArray :(NSMutableArray *)MiMaArray {
    _ZhanghaoArray = ZhanghaoArray;
    _MiMaArray = MiMaArray;
}

- (void)pressdenglu {
    if ([_FirstTextField.text isEqualToString:@"iOSnb123"] && [_SecondTextField.text isEqualToString:@"123456789"]) {
        
        [self pressgo];
    } else {
        int boo = 1;
        for (int i = 0; i < _ZhanghaoArray.count; i++) {
            if ([_ZhanghaoArray[i] isEqualToString:_FirstTextField.text] && [_MiMaArray[i] isEqualToString:_SecondTextField.text]) {
                [self pressgo];
                boo = 0;
            }
        }
        if (boo == 1) {
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"警告" message:@"账号密码不匹配" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
            [alertController addAction:sure];
            [self presentViewController:alertController animated:YES completion:nil];
        }
    }
    
    
}
- (void)pressgo {
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    FirstViewController *firstViewController = [[FirstViewController alloc] init];
    UINavigationController *firstNavigateController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    UINavigationController *secondNavigateController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    UINavigationController *thirdNavigateController = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
    FourViewController *fourViewController = [[FourViewController alloc] init];
    UINavigationController *fourNavigateController = [[UINavigationController alloc] initWithRootViewController:fourViewController];
    FiveViewController *fiveViewController = [[FiveViewController alloc] init];
    UINavigationController *fiveNavigateController = [[UINavigationController alloc] initWithRootViewController:fiveViewController];
    firstViewController.view.backgroundColor = [UIColor whiteColor];
    secondViewController.view.backgroundColor = [UIColor whiteColor];
    thirdViewController.view.backgroundColor = [UIColor whiteColor];
    fourViewController.view.backgroundColor = [UIColor whiteColor];
    fiveViewController.view.backgroundColor = [UIColor whiteColor];
    firstViewController.title = @"1";
    secondViewController.title = @"2";
    thirdViewController.title = @"3";
    fourViewController.title = @"4";
    fiveViewController.title = @"5";
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:firstNavigateController, secondNavigateController,thirdNavigateController,fourNavigateController,fiveNavigateController, nil];
    tabBarController.viewControllers = array;
    
    UIWindow *window = [UIApplication sharedApplication].windows[0];
    window.rootViewController = tabBarController;
    
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
