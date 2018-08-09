//
//  ViewController.m
//  AdapterPattern
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "ViewController.h"
#import "BusinessCardView.h"
#import "ModelAdapter.h"
#import "DataModel.h"
#import "NewDataModel.h"

@interface ViewController (){
    DataModel *model;
    NewDataModel *newmodel;
    BusinessCardView *cardView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建UI控件
    cardView = [[BusinessCardView alloc] initWithFrame:CGRectMake(0, 0, 375, 667.5)];
    cardView.center = self.view.center;
    [self.view addSubview:cardView];
    
    
    // 初始化模型
    model = [[DataModel alloc] init];
    model.name = @"CoderRyan";
    model.phoneNumber = @"188 - 8848 - 8848";
    
    
    newmodel = [[NewDataModel alloc]init];
    newmodel.name = @"aaaa";
    newmodel.phoneNumber = @"bbbbb";
    
    UISwitch *btn = [[UISwitch alloc]initWithFrame:CGRectMake(50, 340, 50, 20)];
    [btn addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:btn];
}
- (void)change:(UISwitch *)btn{
    ModelAdapter *adapter;
    if (btn.on == YES) {
        adapter = [[ModelAdapter alloc] initWithData:newmodel];
    }else{
        adapter = [[ModelAdapter alloc] initWithData:model];
    }
    //cardView与适配器连接*******这个是关键
    [cardView loadData:adapter];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
