//
//  AppleComputerFactory.m
//  Factory
//
//  Created by gjh on 2017/12/16.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "AppleComputerFactory.h"
#import "AppleComputer.h"

@implementation AppleComputerFactory

// 返回具体的电脑
- (id<IComputer>)getComputer {
    return [[AppleComputer alloc] init];
}

@end
