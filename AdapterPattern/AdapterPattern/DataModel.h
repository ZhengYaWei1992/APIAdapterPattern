//
//  ModelAdapter.h
//  AdapterPattern
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DataModel : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *phoneNumber;
@property (nonatomic, strong)UIColor *lineColor;
@end
