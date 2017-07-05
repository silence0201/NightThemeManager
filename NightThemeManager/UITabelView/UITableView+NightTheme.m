//
//  UITableView+NightTheme.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/5.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "UITableView+NightTheme.h"
#import "SINightThemeManager.h"
#import "UIView+NightTheme.h"
#include <objc/runtime.h>

@implementation UITableView (NightTheme)

- (UIColor *)nightSeparatorColor {
    UIColor *nightSeparatorColor = objc_getAssociatedObject(self, _cmd) ;
    if (nightSeparatorColor) {
        return nightSeparatorColor ;
    }
    return self.separatorColor ;
}

- (void)setNightSeparatorColor:(UIColor *)nightSeparatorColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setSeparatorColor:nightSeparatorColor] ;
    }
    objc_setAssociatedObject(self, @selector(nightSeparatorColor), nightSeparatorColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)normalSeparatorColor {
    UIColor *normalSeparatorColor = objc_getAssociatedObject(self, _cmd);
    if (normalSeparatorColor) {
        return normalSeparatorColor ;
    }
    return  self.separatorColor ;
}

- (void)setNormalSeparatorColor:(UIColor *)normalSeparatorColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setSeparatorColor:normalSeparatorColor];
    }
    objc_setAssociatedObject(self, @selector(normalSeparatorColor), normalSeparatorColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (void)themeChange {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setSeparatorColor:self.nightSeparatorColor];
        [self setBackgroundColor:self.nightBackgroundColor];
    } else {
        [self setSeparatorColor:self.normalSeparatorColor];
        [self setBackgroundColor:self.normalBackgroundColor];
    }
}

- (void)themeChangeWithDuration:(NSTimeInterval)duration {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [UIView animateWithDuration:duration animations:^{
            [self setSeparatorColor:self.nightSeparatorColor];
            [self setBackgroundColor:self.nightBackgroundColor];
        }];
    } else {
        [UIView animateWithDuration:duration animations:^{
            [self setSeparatorColor:self.normalSeparatorColor];
            [self setBackgroundColor:self.normalBackgroundColor];
        }];
    }
}

@end
