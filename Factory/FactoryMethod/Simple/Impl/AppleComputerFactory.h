//
//  AppleComputerFactory.h
//  Factory
//
//  Created by gjh on 2017/12/16.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IComputerFactory.h"

// 苹果电脑工厂: 生产苹果电脑遵循工厂协议
@interface AppleComputerFactory : NSObject <IComputerFactory>

@end
