//
//  ViewController.m
//  Factory
//
//  Created by gjh on 2017/12/14.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "ViewController.h"
//#import "MapFactory.h"
//#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
//#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

#import "AppleComputerFactory.h"


#import "BaiduMapFactory.h"
#import "GaodeMapFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    BMKMapView* mapView = [[BMKMapView alloc]initWithFrame:self.view.bounds];
//    self.view = mapView;
    
    // 简单工厂 设计一下
//    MapFactory *factory = [[MapFactory alloc] initWithType:MapTypeGaode];
//    UIView *mapView = [factory getView:self.view.frame];
//    [self.view addSubview:mapView];
    
    // 工厂方法 - 原理测试
//    id<IComputerFactory> factory = [[AppleComputerFactory alloc] init];
//    id<IComputer> computer = [factory getComputer];
//    [computer printInfo];
    
    // 工厂方法--地图测试
    id<IMapFactory> factory = [[GaodeMapFactory alloc] init];
    id<IMapView> mapView = [factory getView:self.view.frame];
    [self.view addSubview:[mapView getView]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
