//
//  AppDelegate.h
//  AdapterPattern_simple
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractCar.h"

@interface AbstractRoad : NSObject

@property (nonatomic,strong)AbstractCar *car;


/**
 抽象的方法
 */
- (void)run;

@end
