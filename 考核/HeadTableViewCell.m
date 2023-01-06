//
//  HeadTableViewCell.m
//  考核
//
//  Created by 翟旭博 on 2022/8/5.
//

#import "HeadTableViewCell.h"
#define width [UIScreen mainScreen].bounds.size.width
#define height [UIScreen mainScreen].bounds.size.height
@implementation HeadTableViewCell



-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.bigimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_bigimageView];
    
    self.smallimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_smallimageView];
    
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview:_label];
    
    return self;
}
- (void)layoutSubviews {
    _bigimageView.frame = CGRectMake(0, 0, width, 200);
    _smallimageView.frame = CGRectMake(width - 100, 160, 80, 80);
    [self.smallimageView.layer setMasksToBounds:YES];
    [self.smallimageView.layer setCornerRadius:10];
    _label.frame = CGRectMake(width - 150, 170, 100, 30);
    _label.textColor = [UIColor whiteColor];
    _label.text = @"默默";
    _label.font = [UIFont systemFontOfSize:22];
    [_bigimageView setImage:[UIImage imageNamed:@"1.png"]];
    [_smallimageView setImage:[UIImage imageNamed:@"2.png"]];
    
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
