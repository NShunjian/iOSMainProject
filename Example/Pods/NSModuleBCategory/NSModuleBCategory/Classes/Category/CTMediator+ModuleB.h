//
//  CTMediator+ModuleB.h
//  ModuleB-Category
//
//  Created by NShunjian on 2018/10/1.
//  Copyright © 2018年 quangqiang. All rights reserved.
//

#import "CTMediator.h"

@interface CTMediator (ModuleB)

- (UIViewController *)performTarget:(NSString *)targetName action:(NSString *)actionName shouldCacheTarget:(BOOL)shouldCacheTarget ModuleB_viewControllerWithParams:(NSDictionary *)params;
- (UIViewController *)performTarget:(NSString *)targetName action:(NSString *)actionName shouldCacheTarget:(BOOL)shouldCacheTarget B_viewControllerWithContentText:(NSString *)contentText;

@end
