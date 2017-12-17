//
//  IComputerFactory.h
//  Factory
//
//  Created by gjh on 2017/12/16.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IComputer.h"

// 电脑工厂(协议)
// 工厂制造: 电脑(IComputer)
// 制造什么电脑?
// 知道制造; 电脑遵循 IComputer 协议
@protocol IComputerFactory <NSObject>

- (id<IComputer>)getComputer;

@end
