//
//  AppDelegate.h
//  AdapterPattern_simple
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "ConcreateStreet.h"

@implementation ConcreateStreet

- (void)run
{
    [self.car carRun];
    NSLog(@"街道");
}

@end
