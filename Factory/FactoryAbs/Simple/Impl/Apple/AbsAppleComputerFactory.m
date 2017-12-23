//
//  AbsAppleComputerFactory.m
//  Factory
//
//  Created by gjh on 2017/12/23.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "AbsAppleComputerFactory.h"
#import "AbsAppleComputerCpu.h"
#import "AbsAppleComputerDisplayCard.h"

@implementation AbsAppleComputerFactory


- (id<AbsComputerCpu>)getCPU {
    return [[AbsAppleComputerCpu alloc] init];
}

- (id<AbsComputerDisplayCard>)getDisplayCard {
    return [[AbsAppleComputerDisplayCard alloc] init];
}


@end
