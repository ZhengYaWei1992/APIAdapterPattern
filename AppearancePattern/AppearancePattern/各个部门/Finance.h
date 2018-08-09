//
//  Finance.h
//  AppearancePattern
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Finance : NSObject

// 现金支付
- (void)cashPayment;

// 申请贷款
- (BOOL)applyLoan;

// 审核贷款
- (BOOL)auditLoan;

// 放款
- (BOOL)getLoad;

@end
