//
//  CTMediator+ModuleB.m
//  ModuleB-Category
//
//  Created by NShunjian on 2018/10/1.
//  Copyright © 2018年 quangqiang. All rights reserved.
//

#import "CTMediator+ModuleB.h"

@implementation CTMediator (ModuleB)

- (UIViewController *)performTarget:(NSString *)targetName action:(NSString *)actionName shouldCacheTarget:(BOOL)shouldCacheTarget ModuleB_viewControllerWithParams:(NSDictionary *)params{
    return [self performTarget:targetName action:actionName params:params shouldCacheTarget:shouldCacheTarget];
}
- (UIViewController *)performTarget:(NSString *)targetName action:(NSString *)actionName shouldCacheTarget:(BOOL)shouldCacheTarget B_viewControllerWithContentText:(NSString *)contentText {
    
    /*
     BViewController *viewController = [[BViewController alloc] initWithContentText:@"hello, world!"];
     */
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"contentText"] = contentText;
    return [self performTarget:targetName action:actionName params:params shouldCacheTarget:shouldCacheTarget];
}
@end
    
