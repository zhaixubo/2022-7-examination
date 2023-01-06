//
//  FriendViewController.m
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "FriendViewController.h"
#import "FirstViewController.h"
#import "HeadTableViewCell.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
@interface FriendViewController ()

@end

@implementation FriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"朋友圈";
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"fanhui.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressback)];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[HeadTableViewCell class] forCellReuseIdentifier:@"1"];
    [_tableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:@"11"];
    [_tableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [self.view addSubview:_tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 11;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 270;
    } else if (indexPath.row % 2 == 0) {
        return 420;
    } else {
        return 315;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *Firstarray = [NSArray arrayWithObjects:@"牛逼1",@"牛逼2",@"牛逼3",@"牛逼4",@"牛逼5",@"牛逼6",@"牛逼7",@"牛逼8",@"牛逼9", @"牛逼10",nil];
    NSArray *Secondarray = [NSArray arrayWithObjects:@"西安邮电大学",@"西安邮电大学2",@"西安邮电大学3",@"西安邮电大学4",@"西安邮电大学5",@"西安邮电大学6",@"西安邮电大学7",@"西安邮电大学8",@"西安邮电大学9", @"西安邮电大学10",nil];
    NSArray *Thirdarray = [NSArray arrayWithObjects:@"昨天1",@"昨天2",@"昨天3",@"昨天4",@"昨天5",@"昨天6",@"昨天7",@"昨天8",@"昨天9", @"昨天10",nil];
    NSArray *imageArray = [NSArray arrayWithObjects:@"1",@"2",@"3.jpg",@"4",@"5",@"6",@"7",@"8.jpg",@"9", @"10",nil];
    if (indexPath.row == 0) {
        HeadTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        return cell;
    } else if (indexPath.row % 2 == 0) {
        FirstTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"11" forIndexPath:indexPath];
        cell.firstlabel.text = Firstarray[indexPath.row - 1];
        cell.secondlabel.text = Secondarray[indexPath.row - 1];
        cell.thirdlabel.text = Thirdarray[indexPath.row - 1];
        cell.firstimageview.image = [UIImage imageNamed:imageArray[indexPath.row - 1]];
        cell.secondimageview.image = [UIImage imageNamed:imageArray[indexPath.row - 1]];
        return cell;
        
    } else {
        SecondTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        cell.firstlabel.text = Firstarray[indexPath.row - 1];
        cell.secondlabel.text = Secondarray[indexPath.row - 1];
        cell.thirdlabel.text = Thirdarray[indexPath.row - 1];
        cell.firstimageview.image = [UIImage imageNamed:imageArray[indexPath.row - 1]];
        cell.secondimageview.image = [UIImage imageNamed:imageArray[indexPath.row - 1]];
        cell.thirdimageview.image = [UIImage imageNamed:imageArray[indexPath.row - 1]];
        return cell;
    }

}

- (void)pressback {
    
    [self.navigationController popViewControllerAnimated:YES];
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
