//
//  UIViewController+NightTheme.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/5.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "UIViewController+NightTheme.h"
#import "SINightThemeManager.h"
#import <objc/runtime.h>

@implementation UIViewController (NightTheme)

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        SEL originalSelector = @selector(viewWillAppear:);
        SEL swizzledSelector = @selector(night_viewWillAppear:);
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        BOOL didAddMethod =
        class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        if (didAddMethod){
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}


- (void)night_viewWillAppear:(BOOL)animated{
    [self night_viewWillAppear:animated];
    [SINightThemeManager changeTheme:self.view] ;
}

@end
