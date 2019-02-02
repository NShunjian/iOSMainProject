//
//  Target_NSTest.m
//  NSMainProject_Example
//
//  Created by NShunjian on 2019/1/31.
//  Copyright © 2019年 NShunJian. All rights reserved.
//

#import "Target_NSTest.h"
#import "NSTestViewController.h"

@implementation Target_NSTest
- (UIViewController *)Action_method:(NSDictionary *)params {
    NSTestViewController *VC = [[NSTestViewController alloc] init];
    VC.params = params;
    return VC;
}
@end
