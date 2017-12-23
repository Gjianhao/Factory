//
//  AbsComputerCpu.h
//  Factory
//
//  Created by gjh on 2017/12/23.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>

// 抽象电脑 cpu 接口
@protocol AbsComputerCpu <NSObject>

// 打印电脑 CPU 信息
- (void)printInfo;

@end
