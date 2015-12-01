//
//  CustomCell.h
//  autoLayoutDemo
//
//  Created by gaoyangchun on 15/11/26.
//  Copyright © 2015年 gaoyangchun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell


@property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) UILabel *label;

- (void)setUp;
@end
