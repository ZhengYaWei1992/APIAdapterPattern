//
//  ObjectAdapter.h
//  AdapterPattern_simple
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TargetCNYProtocol.h"

@class USD;

@interface ObjectAdapter : NSObject<TargetCNYProtocol>
- (instancetype)initWithAdapted:(USD *) usd;
@end
