//
//  NSViewController.m
//  NSMainProject
//
//  Created by NShunJian on 01/31/2019.
//  Copyright (c) 2019 NShunJian. All rights reserved.
//

#import "NSViewController.h"
#import <CTMediator+ModuleB.h>
#import <CTMediator+Elelnvoice.h>


@interface NSViewController ()

@end

@implementation NSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"这是项目主工程";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 100, 300, 100);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"点我进业务模块组件" forState: UIControlStateNormal];
    [btn addTarget:self action:@selector(moduleA) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(50, 300, 300, 100);
    btn2.backgroundColor = [UIColor orangeColor];
    [btn2 setTitle:@"点我进业B务模块B组件" forState: UIControlStateNormal];
    [btn2 addTarget:self action:@selector(moduleB) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(50, 500, 300, 100);
    btn3.backgroundColor = [UIColor orangeColor];
    [btn3 setTitle:@"点我进B组件" forState: UIControlStateNormal];
    [btn3 addTarget:self action:@selector(moduleC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
}

- (void)moduleA {
    UIViewController *VC = [[CTMediator sharedInstance] performTarget:@"EleInvoice" action:@"viewController" shouldCacheTarget:NO EleInvoice_ViewControllerWithCallback:^(NSString *result) {
        NSLog(@"moduleA_%@",result);
    }];
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)moduleB {
//    UIViewController *VC = [[CTMediator sharedInstance] performTarget:@"NSTest" action:@"method" shouldCacheTarget:NO ModuleB_viewControllerWithParams:@{@"param":@"我是测试页面NSTestViewController"}];
    
    
    UIViewController *VC = [[CTMediator sharedInstance] performTarget:@"ModuleB" action:@"viewController" shouldCacheTarget:NO ModuleB_viewControllerWithParams:@{@"param":@"我是NSViewController传来的参数"}];
    [self.navigationController pushViewController:VC animated:YES];
}

-(void)moduleC {
    UIViewController *VC = [[CTMediator sharedInstance] performTarget:@"ModuleB" action:@"contentText" shouldCacheTarget:NO B_viewControllerWithContentText:@"Hello 我是模块通讯参数"];
    
    [self.navigationController pushViewController:VC animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
