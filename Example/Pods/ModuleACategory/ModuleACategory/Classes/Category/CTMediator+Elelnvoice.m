//
//  CTMediator+Elelnvoice.m
//  ModuleCategory
//
//  Created by NShunjian on 2018/10/1.
//  Copyright © 2018年 quangqiang. All rights reserved.
//

#import "CTMediator+Elelnvoice.h"

@implementation CTMediator (Elelnvoice)

- (UIViewController *)performTarget:(NSString *)targetName action:(NSString *)actionName shouldCacheTarget:(BOOL)shouldCacheTarget EleInvoice_ViewControllerWithCallback:(void(^)(NSString *result))callback {
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:targetName action:actionName params:params shouldCacheTarget:shouldCacheTarget];
}
@end
