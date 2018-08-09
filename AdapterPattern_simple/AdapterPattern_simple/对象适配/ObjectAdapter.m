//
//  ObjectAdapter.m
//  AdapterPattern_simple
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "ObjectAdapter.h"
#import "USD.h"
@interface ObjectAdapter ()

@property (nonatomic, strong) USD *usd;

@end


@implementation ObjectAdapter
- (instancetype)initWithAdapted:(USD *) usd{
    if (self = [super init]){
        _usd = usd;
    }
    return self;
}

#pragma mark - TargetCNYProtocol
- (float)obtainCNY{
    return [self.usd obtainUSD] * 6.61;
}


@end
