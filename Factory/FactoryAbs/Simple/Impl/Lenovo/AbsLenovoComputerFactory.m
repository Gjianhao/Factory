//
//  AbsLenovoComputerFactory.m
//  Factory
//
//  Created by gjh on 2017/12/23.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "AbsLenovoComputerFactory.h"
#import "AbsLenovoComputerCpu.h"
#import "AbsLenovoComputerDisplayCard.h"


@implementation AbsLenovoComputerFactory

- (id<AbsComputerCpu>)getCPU {
    return [[AbsLenovoComputerCpu alloc] init];
}

- (id<AbsComputerDisplayCard>)getDisplayCard {
    return [[AbsLenovoComputerDisplayCard alloc] init];
}

@end
