//
//  AbsComputerFactory.h
//  Factory
//
//  Created by gjh on 2017/12/23.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbsComputerCpu.h"
#import "AbsComputerDisplayCard.h"

// 抽象工厂电脑统一工厂接口
@protocol AbsComputerFactory <NSObject>

// CPU
- (id<AbsComputerCpu>)getCPU;

// 显卡
- (id<AbsComputerDisplayCard>)getDisplayCard;

@end
