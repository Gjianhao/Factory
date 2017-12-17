//
//  IMapFactory.h
//  Factory
//
//  Created by gjh on 2017/12/17.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapView.h"

// 地图工厂标准协议
@protocol IMapFactory <NSObject>

// 地图基本模块
// 生产什么内容?
// 地图(UIView)
- (id<IMapView>)getView:(CGRect)frame;


@end
