//
//  CarGroup.m
//  TableViewTest
//
//  Created by ChaiYunxiang on 3/11/15.
//  Copyright (c) 2015 ChaiYunxiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarGroup.h"


@implementation CarGroup
+ (instancetype)carGroupWithDict:(NSDictionary *)dict
{
    CarGroup *cg = [[self alloc] init];
    [cg setValuesForKeysWithDictionary:dict];
    return cg;
}
@end
