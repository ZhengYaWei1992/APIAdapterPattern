//
//  ViewController.m
//  BridgePattern
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "ViewController.h"
#import "AbstractRoad.h"
#import "ConcreateCar.h"
#import "ConcreateBus.h"
#import "ConcreteSpeedWay.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    如果 Road  和 Car 是 需要的类的总数 是 N+M 的关系 而坏的例子中是 N*M 的类的总数
    AbstractRoad *road1 = [[ConcreteSpeedWay alloc] init];
    road1.car = [[ConcreateCar alloc] init];
    [road1 run];
    
    AbstractRoad *road2 = [[ConcreteSpeedWay alloc] init];
    road2.car = [[ConcreateBus alloc] init];
    [road2 run];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
