//
//  NSTestViewController.m
//  NSMainProject_Example
//
//  Created by NShunjian on 2019/1/31.
//  Copyright © 2019年 NShunJian. All rights reserved.
//

#import "NSTestViewController.h"

@interface NSTestViewController ()

@end

@implementation NSTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.params[@"param"];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
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
