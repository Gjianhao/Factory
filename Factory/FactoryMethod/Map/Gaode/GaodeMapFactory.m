//
//  GaodeMapFactory.m
//  Factory
//
//  Created by gjh on 2017/12/17.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

#import "GaodeMapFactory.h"
#import "GaodeMapView.h"

#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@implementation GaodeMapFactory

- (instancetype)init {
    self = [super init];
    if (self) {
        [AMapServices sharedServices].apiKey =@"d40d601856c21e44cb7404a595cd03ef";
    }
    return self;
}

- (id<IMapView>)getView:(CGRect)frame {
    return [[GaodeMapView alloc] initWithFrame:frame];
}

@end
