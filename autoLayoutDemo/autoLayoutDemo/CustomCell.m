//
//  CustomCell.m
//  autoLayoutDemo
//
//  Created by gaoyangchun on 15/11/26.
//  Copyright © 2015年 gaoyangchun. All rights reserved.
//

#import "CustomCell.h"
#import "Masonry.h"


@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self addConstraint];
    }
    return self;
}

- (void)setUp
{
    self.label.text  = @"sakldjflsadjflsadjlfjas;ldjf;ljdl;AJsldj;aKDS;Ka;sdjlasJDLajsldjlJFLjdslf时间的饭卡时间法拉盛记得来反馈撒的旅客减肥啊jaLFJLjsfl;asjflkjsd;lFJ是顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶的凤飞飞";
}

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

- (void)addConstraint
{
    [self.contentView addSubview:self.label];
//    WS(ws);
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.right.equalTo(@(-10));
        make.top.equalTo(@0);
        make.bottom.equalTo(@(-100));
    }];
}

- (UILabel*)label
{
    if (!_label)
    {
        _label = [[UILabel alloc] init];
        _label.numberOfLines = 0;
        _label.backgroundColor = [UIColor redColor];
        _label.textColor = [UIColor blackColor];

    }
    return _label;
}

- (UIView*)bgView
{
    if (!_bgView)
    {
        _bgView = [[UIView alloc] init];
    }
    return _bgView;
}
@end
