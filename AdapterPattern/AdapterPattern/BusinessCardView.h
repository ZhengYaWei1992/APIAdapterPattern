//
//  ModelAdapter.h
//  AdapterPattern
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BusinessCardAdapterProtcol <NSObject>

- (NSString *)name;

- (NSString *)phoneNumber;

@end

@interface BusinessCardView : UIView<BusinessCardAdapterProtcol>


- (void)loadData:(id<BusinessCardAdapterProtcol>)data;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *phoneNumber;

@end
