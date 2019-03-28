//
//  WBMGJRouterManager.m
//  ModularizationDemo
//
//  Created by Mr_Lucky on 2018/11/1.
//  Copyright © 2018 wenbo. All rights reserved.
//

#import "WBMGJRouterManager.h"

#import "MGJRouter.h"

#import "MGJDetailViewController.h"

@implementation WBMGJRouterManager

+ (void)load {
    [MGJRouter registerURLPattern:@"MGJ://test/pushMGJDetail1"
                        toHandler:^(NSDictionary *routerParameters) {
                            UINavigationController *nav = routerParameters[MGJRouterParameterUserInfo][@"navVC"];
                            MGJDetailViewController *vc = [MGJDetailViewController new];
                            vc.text = routerParameters[MGJRouterParameterUserInfo][@"text"];
                            [nav pushViewController:vc animated:YES];
     }];
    
    [MGJRouter registerURLPattern:@"MGJ://test/pushMGJDetail2"
                        toObjectHandler:^(NSDictionary *routerParameters) {
                            MGJDetailViewController *vc = [MGJDetailViewController new];
                            vc.text = routerParameters[MGJRouterParameterUserInfo][@"text"];
                            return vc;
                        }];
}

@end
