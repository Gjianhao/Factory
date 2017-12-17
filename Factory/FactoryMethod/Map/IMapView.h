//
//  IMapView.h
//  Factory
//
//  Created by gjh on 2017/12/17.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <UIKit/UIKit.h>

// 地图 MapView 协议
@protocol IMapView <NSObject>

- (instancetype)initWithFrame:(CGRect)frame;

// 有哪些标准?
// 返回具体的 UIView ,高德, Baidu, 他们的爸爸都是 UIView
- (UIView *)getView;

@end
