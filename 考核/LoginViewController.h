//
//  LoginViewController.h
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "ViewController.h"
#import "RegisterViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : ViewController <UITextFieldDelegate, RegisterDelegate>

@property (nonatomic, strong) UITextField *FirstTextField;
@property (nonatomic, strong) UITextField *SecondTextField;
@property (nonatomic, strong) UIButton *leftButton;
@property (nonatomic, strong) UIButton *rightButton;
@property (nonatomic, strong) NSMutableArray *ZhanghaoArray;
@property (nonatomic, strong) NSMutableArray *MiMaArray;
@end

NS_ASSUME_NONNULL_END
