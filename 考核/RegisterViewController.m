//
//  RegisterViewController.m
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    _FirstTextField = [[UITextField alloc] init];
    _FirstTextField.frame = CGRectMake(100, 300, 230, 50);
    _FirstTextField.backgroundColor = [UIColor whiteColor];
    _FirstTextField.placeholder = @"请输入email";
    [self.view addSubview:_FirstTextField];
    
    _SecondTextField = [[UITextField alloc] init];
    _SecondTextField.frame = CGRectMake(100, 420, 230, 50);
    _SecondTextField.backgroundColor = [UIColor whiteColor];
    _SecondTextField.placeholder = @"请输入账号";
    [self.view addSubview:_SecondTextField];
    
    _ThirdTextField = [[UITextField alloc] init];
    _ThirdTextField.frame = CGRectMake(100, 540, 230, 50);
    _ThirdTextField.backgroundColor = [UIColor whiteColor];
    _ThirdTextField.placeholder = @"请输入密码";
    [self.view addSubview:_ThirdTextField];
    
    _Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_Button setTitle:@"确认注册" forState:UIControlStateNormal];
    _Button.frame = CGRectMake(100, 600, 100, 80);
    [_Button addTarget:self action:@selector(pressYes) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_Button];
    
    _ZhanghaoArray = [[NSMutableArray alloc] init];
    _MiMaArray = [[NSMutableArray alloc] init];
}

- (void)pressYes {
    int boo = 0;
    for (int i = 0; i < _ZhanghaoArray.count; i++) {
        if ([_SecondTextField.text isEqualToString:_ZhanghaoArray[i]]){
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"警告" message:@"账号重复，请重新注册" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
            [alertController addAction:sure];
            [self presentViewController:alertController animated:YES completion:nil];
            boo = 1;
            break;
        }
    }
    if (boo == 0) {
        [_ZhanghaoArray addObject:_SecondTextField.text];
        [_MiMaArray addObject:_ThirdTextField.text];
        [_delegate Register:_ZhanghaoArray :_MiMaArray];
        [self dismissViewControllerAnimated:YES completion:nil];
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
