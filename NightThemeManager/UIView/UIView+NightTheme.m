//
//  UIView+NightTheme.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/3.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "UIView+NightTheme.h"
#import "SINightThemeManager.h"
#import <objc/runtime.h>

@implementation UIView (NightTheme)

- (UIColor *)nightBackgroundColor {
    UIColor *nightColor = objc_getAssociatedObject(self, _cmd) ;
    if (nightColor) {
        return nightColor ;
    }
    return self.backgroundColor ;
}

- (void)setNightBackgroundColor:(UIColor *)nightBackgroundColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBackgroundColor:nightBackgroundColor] ;
    }
    objc_setAssociatedObject(self, @selector(nightBackgroundColor), nightBackgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (UIColor *)normalBackgroundColor {
    UIColor *normalColor = objc_getAssociatedObject(self, _cmd) ;
    if (normalColor) {
        return normalColor ;
    }
    return self.backgroundColor ;
}

- (void)setNormalBackgroundColor:(UIColor *)normalBackgroundColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setBackgroundColor:normalBackgroundColor] ;
    }
    objc_setAssociatedObject(self, @selector(normalBackgroundColor), normalBackgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (void)themeChange {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBackgroundColor:self.nightBackgroundColor] ;
    }else {
        [self setBackgroundColor:self.normalBackgroundColor] ;
    }
}

- (void)themeChangeWithDuration:(NSTimeInterval)duration {
    UIColor *color = [SINightThemeManager currentTheme] == SINightThemeNight ? self.nightBackgroundColor : self.normalBackgroundColor ;
    [UIView animateWithDuration:duration animations:^{
        [self setBackgroundColor:color] ;
    }] ;
}

@end
