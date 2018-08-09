//
//  AdapterCNY.m
//  AdapterPattern_simple
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "AdapterCNY.h"

@implementation AdapterCNY
- (float)obtainCNY
{
    return [self obtainUSD] * 6.61;
}
@end
