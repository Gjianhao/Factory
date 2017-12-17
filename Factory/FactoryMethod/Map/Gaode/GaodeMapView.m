//
//  GaodeMapView.m
//  Factory
//
//  Created by gjh on 2017/12/17.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "GaodeMapView.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface GaodeMapView ()

@property(nonatomic) MAMapView *mapView;

@end

@implementation GaodeMapView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super init];
    if (self) {
        _mapView = [[MAMapView alloc] initWithFrame:frame];
    }
    return self;
}

- (UIView *)getView {
    return _mapView;
}


@end
