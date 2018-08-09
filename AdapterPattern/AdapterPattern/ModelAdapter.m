//
//  ModelAdapter.m
//  AdapterPattern
//
//  Created by yunshan on 2018/8/8.
//  Copyright © 2018年 yunshan. All rights reserved.
//

#import "ModelAdapter.h"
#import "DataModel.h"
#import "NewDataModel.h"


@implementation ModelAdapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}


#pragma mark - BusinessCardAdapterProtcol
- (NSString *)name{
    NSString *name = nil;
    if ([self.data isMemberOfClass:[DataModel class]]) {
        DataModel *data = self.data;
        name = data.name;
    }
    else if ([self.data isMemberOfClass:[NewDataModel class]]){
        NewDataModel *data = self.data;
        name = data.name;
    }
    
    return name;
}

- (NSString *)phoneNumber{
    
    NSString *phoneNumber = nil;
    if ([self.data isMemberOfClass:[DataModel class]]) {
        DataModel *data = self.data;
        phoneNumber = data.phoneNumber;
    }
    else if ([self.data isMemberOfClass:[NewDataModel class]]){
        NewDataModel *data = self.data;
        phoneNumber = data.phoneNumber;
    }
    
    return phoneNumber;
}

@end
