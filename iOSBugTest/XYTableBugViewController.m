//
//  XYTableBugViewController.m
//  iOSBugTest
//
//  Created by 小萌 on 2018/3/20.
//  Copyright © 2018年 sunxm. All rights reserved.
//

#import "XYTableBugViewController.h"
#import "XYBugTableCell.h"
#import "UITableView+FDTemplateLayoutCell.h"

static NSString *cellIdentifier = @"XYBugTableCell";
@interface XYTableBugViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation XYTableBugViewController
#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableView.tableFooterView = [UIView new];//运行崩溃    
    //www.iOSBugTest
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([XYBugTableCell class]) bundle:nil] forCellReuseIdentifier:cellIdentifier];
    self.tableView.tableFooterView = [UIView new];//运行正常
}
#pragma mark -UITableViewDelegate,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XYBugTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [tableView fd_heightForCellWithIdentifier:cellIdentifier cacheByIndexPath:indexPath configuration:^(XYBugTableCell *cell) {

    }];
//    return 100;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
