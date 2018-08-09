//
//  ViewController.m
//  AdapterPattern_simple
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "ViewController.h"
#import "AdapterCNY.h"
#import "ObjectAdapter.h"
#import "USD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //类适配器
    AdapterCNY *adapter_CNY = [[AdapterCNY alloc] init];
    float result_CNY = [adapter_CNY obtainCNY];
    NSLog(@"CNY = %.2f", result_CNY);
    
    //对象适配器
    ObjectAdapter *adapter_CNY2 = [[ObjectAdapter alloc] initWithAdapted:[USD new]];
    float result_CNY2 = [adapter_CNY2 obtainCNY];
    NSLog(@"CNY2 = %.2f", result_CNY2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
