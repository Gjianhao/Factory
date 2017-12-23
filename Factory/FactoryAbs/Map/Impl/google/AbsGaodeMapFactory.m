//
//  AbsGaodeMapFactory.m
//  Factory
//
//  Created by gjh on 2017/12/24.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "AbsGaodeMapFactory.h"

#import "AbsGaodeMapView.h"
#import "AbsGaodeMapLocation.h"

#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@implementation AbsGaodeMapFactory

- (instancetype)init {
    self = [super init];
    if (self) {
        [AMapServices sharedServices].apiKey =@"d40d601856c21e44cb7404a595cd03ef";
    }
    return self;
}

- (id<AbsMapView>)getMapView:(CGRect)frame {
    return [[AbsGaodeMapView alloc] initWithFrame:frame];
}

- (id<AbsMapLocation>)getMapLocation {
    return [[AbsGaodeMapLocation alloc] init];
}

@end


