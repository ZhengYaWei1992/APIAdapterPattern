//
//  ViewController.m
//  AppearancePattern
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "ViewController.h"
#import "SSSSWaiter.h"

@interface ViewController ()
{
    SSSSWaiter *_waiter;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _waiter = [[SSSSWaiter alloc] init];
    // 现金买车
    [_waiter buyCarWithCash];
    NSLog(@"================分割线====================");
     //贷款买车
    [_waiter buyCarWithLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
