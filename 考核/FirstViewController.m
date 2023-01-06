//
//  FirstViewController.m
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "FirstViewController.h"
#import "FriendViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"PUSH" style:UIBarButtonItemStylePlain target:self action:@selector(pressgo)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
}
- (void)pressgo {
    FriendViewController *friendViewController = [[FriendViewController alloc] init];
    [self.navigationController pushViewController:friendViewController animated:YES];
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
