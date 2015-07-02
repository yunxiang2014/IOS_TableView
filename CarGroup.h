//
//  CarGroup.h
//  TableViewTest
//
//  Created by ChaiYunxiang on 3/11/15.
//  Copyright (c) 2015 ChaiYunxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarGroup : NSObject
@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *desc;
@property (strong, nonatomic) NSArray *cars;

+ (instancetype)carGroupWithDict:(NSDictionary *)dict;
@end



