//
//  NSObject+CurrentVC.m
//  GlobalTimes
//
//  Created by MXTH on 2017/7/4.
//  Copyright © 2017年 Hannah. All rights reserved.
//

#import "NSObject+CurrentVC.h"

@implementation NSObject (CurrentVC)

- (UIViewController *)hh_getCurrentViewController{
    UIViewController *currentVC = nil;
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    if (rootVC.presentedViewController) {
        if ([rootVC.presentedViewController isKindOfClass:[UINavigationController class]]) {
            
            UINavigationController *currentNav = (UINavigationController *)rootVC.presentedViewController;
            currentVC = currentNav.visibleViewController;
            return currentVC;
            
        }else if ([rootVC.presentedViewController isKindOfClass:[UITabBarController class]]){
            
            UITabBarController *tabVC = (UITabBarController *)rootVC.presentedViewController;
            if ([tabVC.selectedViewController isKindOfClass:[UINavigationController class]]) {
                UINavigationController *currentNav = (UINavigationController *)tabVC.selectedViewController;
                currentVC = currentNav.visibleViewController;
                return currentVC;
            }else{
                currentVC = tabVC.selectedViewController;
                return currentVC;
            }
            
        }else{
            
            currentVC = rootVC.presentedViewController;
            return currentVC;
            
        }
        
    }else{
    
        if ([rootVC isKindOfClass:[UITabBarController class]]) {
            UITabBarController *tabVC = (UITabBarController *)rootVC;
            
            if ([tabVC.selectedViewController isKindOfClass:[UINavigationController class]]) {
                UINavigationController *currentNav = (UINavigationController *)tabVC.selectedViewController;
                currentVC = currentNav.visibleViewController;
                return currentVC;
            }else{
                currentVC = tabVC.selectedViewController;
                return currentVC;
            }
            
        }else if ([rootVC isKindOfClass:[UINavigationController class]]){
            
            UINavigationController *currentNav = (UINavigationController *)rootVC;
            currentVC = currentNav.visibleViewController;
            return currentVC;
            
        }else{
            
            currentVC = rootVC;
            return currentVC;
            
        }
        
        
    }
    

}

@end
