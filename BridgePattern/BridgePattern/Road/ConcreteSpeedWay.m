//
//  AppDelegate.h
//  AdapterPattern_simple
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "ConcreteSpeedWay.h"

@implementation ConcreteSpeedWay

- (void)run
{
    [self.car carRun];
    NSLog(@"高速公路");
}


@end
