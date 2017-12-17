//
//  MapFactory.m
//  Factory
//
//  Created by gjh on 2017/12/14.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "MapFactory.h"


@interface MapFactory ()

@property (nonatomic)UIView *mapVeiw;

@property (nonatomic, assign)ShowMapType mapType;

@property (nonatomic, strong)BMKMapManager *mapManager;

@end

@implementation MapFactory

- (instancetype)initWithType:(ShowMapType)type {
    self = [super init];
    if (self) {
        _mapType = type;
        switch (_mapType) {
            case MapTypeBaidu:
                _mapManager = [[BMKMapManager alloc]init];
                // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
                BOOL ret = [_mapManager start:@"mIYPBPeyAYjbv9cpogqgfB0gC83bGFVe"  generalDelegate:nil];
                if (!ret) {
                    NSLog(@"manager start failed!");
                }
                break;
            case MapTypeGaode:
                [AMapServices sharedServices].apiKey =@"d40d601856c21e44cb7404a595cd03ef";
            default:
                break;
        }
        
    }
    return self;
}

- (UIView *)getView:(CGRect)frame {
    if (_mapVeiw == nil) {
        switch (_mapType) {
            case MapTypeBaidu:
                _mapVeiw = [[BMKMapView alloc]initWithFrame:frame];
                break;
            case MapTypeGaode:
                _mapVeiw = [[MAMapView alloc] initWithFrame:frame];
                break;
                
            default:
                break;
        }
        
    }
    return _mapVeiw;
}

@end
