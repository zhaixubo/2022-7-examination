//
//  RegisterViewController.h
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@protocol RegisterDelegate <NSObject>

- (void)Register:(NSMutableArray *)ZhanghaoArray:(NSMutableArray *)MiMaArray;

@end

@interface RegisterViewController : ViewController
@property (nonatomic, strong) UITextField *FirstTextField;
@property (nonatomic, strong) UITextField *SecondTextField;
@property (nonatomic, strong) UITextField *ThirdTextField;
@property (nonatomic, strong) UIButton *Button;
@property (nonatomic, strong) NSMutableArray *ZhanghaoArray;
@property (nonatomic, strong) NSMutableArray *MiMaArray;
@property (assign, nonatomic) id <RegisterDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
