//
//  AbsBaiduMapFactory.m
//  Factory
//
//  Created by gjh on 2017/12/24.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "AbsBaiduMapFactory.h"
#import "AbsBaiduMapView.h"
#import "AbsBaiduMapLocation.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

@implementation AbsBaiduMapFactory

- (instancetype)init {
    self = [super init];
    if (self) {
        BMKMapManager *_mapManager = [[BMKMapManager alloc]init];
        // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
        BOOL ret = [_mapManager start:@"mIYPBPeyAYjbv9cpogqgfB0gC83bGFVe"  generalDelegate:nil];
        if (!ret) {
            NSLog(@"manager start failed!");
        }
    }
    return self;
}

- (id<AbsMapView>)getMapView:(CGRect)frame {
    return [[AbsBaiduMapView alloc] initWithFrame:frame];
}

- (id<AbsMapLocation>)getMapLocation {
    return [[AbsBaiduMapLocation alloc] init];
}


@end
