//
//  MapFactory.h
//  Factory
//
//  Created by gjh on 2017/12/14.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>


typedef NS_ENUM(NSInteger, ShowMapType) {
    MapTypeBaidu,
    MapTypeGaode
};

@interface MapFactory : NSObject

- (instancetype)initWithType:(ShowMapType)type;

- (UIView *)getView:(CGRect)frame;

@end
