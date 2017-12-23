//
//  AbsBaiduMapView.m
//  Factory
//
//  Created by gjh on 2017/12/24.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "AbsBaiduMapView.h"

#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

@interface AbsBaiduMapView ()

@property(nonatomic) BMKMapView *mapView;

@end

@implementation AbsBaiduMapView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super init];
    if (self) {
        _mapView = [[BMKMapView alloc] initWithFrame:frame];
    }
    return self;
}

- (id)getView {
    return _mapView;
}


@end
