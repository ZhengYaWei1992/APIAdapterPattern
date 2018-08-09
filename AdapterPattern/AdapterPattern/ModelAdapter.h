//
//  ModelAdapter.h
//  AdapterPattern
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BusinessCardView.h"

@interface ModelAdapter : NSObject<BusinessCardAdapterProtcol>

@property (nonatomic, weak)id data;

- (instancetype)initWithData:(id)data;

@end
