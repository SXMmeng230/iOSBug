//
//  ViewController.m
//  iOSBugTest
//
//  Created by 小萌 on 2018/3/20.
//  Copyright © 2018年 sunxm. All rights reserved.
//

#import "ViewController.h"
#import "XYTableBugViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - 测试bug1
- (IBAction)clickBug1:(UIButton *)sender {
    XYTableBugViewController *bugVC = [[XYTableBugViewController alloc] init];
    [self.navigationController pushViewController:bugVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
