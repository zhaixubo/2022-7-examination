//
//  FirstTableViewCell.m
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.firstlabel = [[UILabel alloc] init];
    [self.contentView addSubview:_firstlabel];
    
    self.firstimageview = [[UIImageView alloc] init];
    [self.contentView addSubview:_firstimageview];
    
    self.secondimageview = [[UIImageView alloc] init];
    [self.contentView addSubview:_secondimageview];
     
    self.secondlabel = [[UILabel alloc] init];
    [self.contentView addSubview:_secondlabel];
    
    self.thirdlabel = [[UILabel alloc] init];
    [self.contentView addSubview: _thirdlabel];
    
    return self;

}

- (void)layoutSubviews {
    self.firstimageview.frame = CGRectMake(5, 5, 70, 70);
    [self.firstimageview.layer setMasksToBounds:YES];
    [self.firstimageview.layer setCornerRadius:10];
    self.firstlabel.frame = CGRectMake(85, 5, 300 , 45);
    self.firstlabel.font = [UIFont systemFontOfSize:25];
    self.firstlabel.textColor = [UIColor blueColor];
    
    self.secondimageview.frame = CGRectMake(85, 85, 150, 200);
    
    self.secondlabel.frame = CGRectMake(85, 300, 300, 50);
    self.secondlabel.textColor = [UIColor blueColor];
    self.secondlabel.font = [UIFont systemFontOfSize:20];
    self.thirdlabel.frame = CGRectMake(85, 340, 300, 50);
    self.thirdlabel.textColor = [UIColor grayColor];
    self.thirdlabel.font = [UIFont systemFontOfSize:20];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
