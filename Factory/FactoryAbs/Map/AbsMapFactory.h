//
//  AbsMapFactory.h
//  Factory
//
//  Created by gjh on 2017/12/23.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AbsMapView.h"
#import "AbsMapLocation.h"
// 抽象工厂设计
@protocol AbsMapFactory <NSObject>
// 基本模块
- (id<AbsMapView>)getMapView:(CGRect)frame;
// 定位模块
- (id<AbsMapLocation>)getMapLocation;

@end
