//
//  ViewController.m
//  autoLayoutDemo
//
//  Created by gaoyangchun on 15/11/26.
//  Copyright © 2015年 gaoyangchun. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "CustomCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITableView *table = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 300) style:UITableViewStylePlain];
    [table registerClass:[CustomCell class] forCellReuseIdentifier:@"CustomCell"];
    table.dataSource = self;
    table.delegate = self;
    [self.view addSubview:table];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview delegate & datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = [tableView fd_heightForCellWithIdentifier:@"CustomCell" configuration:^(CustomCell* cell) {

        [cell setUp];
    }];

    return height;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];

    [cell setUp];

    return cell;
}

@end
