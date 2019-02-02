//
//  CTMediator+Elelnvoice.h
//  ModuleCategory
//
//  Created by NShunjian on 2018/10/1.
//  Copyright © 2018年 quangqiang. All rights reserved.
//

#import "CTMediator.h"

@interface CTMediator (Elelnvoice)

- (UIViewController *)performTarget:(NSString *)targetName action:(NSString *)actionName shouldCacheTarget:(BOOL)shouldCacheTarget EleInvoice_ViewControllerWithCallback:(void(^)(NSString *result))callback;
@end
