//
//  FriendViewController.h
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface FriendViewController : ViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

NS_ASSUME_NONNULL_END
