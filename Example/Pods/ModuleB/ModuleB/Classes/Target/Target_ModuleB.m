//
//  Target_ModuleB.m
//  ModuleB-Component
//
//  Created by NShunjian on 2018/9/13.
//  Copyright © 2018年 quangqiang. All rights reserved.
//

#import "Target_ModuleB.h"
#import "ModuleBViewController.h"
#import "BViewController.h"

@implementation Target_ModuleB

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    ModuleBViewController *VC = [[ModuleBViewController alloc] init];
    VC.params = params;
    return VC;
}

- (UIViewController *)Action_contentText:(NSDictionary *)params
{
    NSString *contentText = params[@"contentText"];
    BViewController *viewController = [[BViewController alloc] initWithContentText:contentText];
    return viewController;
}
@end
