//
//  UILabel+NightTheme.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/4.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "UILabel+NightTheme.h"
#import "SINightThemeManager.h"
#import "UIView+NightTheme.h"
#import <objc/runtime.h>

@implementation UILabel (NightTheme)

- (UIColor *)nightTextColor {
    UIColor *nightColor = objc_getAssociatedObject(self, _cmd) ;
    if (nightColor) {
        return nightColor ;
    }
    return self.textColor ;
}

- (void)setNightTextColor:(UIColor *)nightTextColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setTextColor:nightTextColor] ;
    }
    objc_setAssociatedObject(self, @selector(nightTextColor), nightTextColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (UIColor *)normalTextColor {
    UIColor *normalTextColor = objc_getAssociatedObject(self, _cmd) ;
    if (normalTextColor) {
        return normalTextColor ;
    }
    return self.textColor ;
}

- (void)setNormalTextColor:(UIColor *)normalTextColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setTextColor:normalTextColor] ;
    }
    objc_setAssociatedObject(self, @selector(normalTextColor), normalTextColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (void)themeChange {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setTextColor:self.nightTextColor] ;
        [self setBackgroundColor:self.nightBackgroundColor] ;
    } else {
        [self setTextColor:self.normalTextColor] ;
        [self setBackgroundColor:self.normalBackgroundColor] ;
    }
}

- (void)themeChangeWithDuration:(NSTimeInterval)duration {
    [super themeChangeWithDuration:duration] ;
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [UIView animateWithDuration:duration animations:^{
            [self setTextColor:self.nightTextColor] ;
            [self setBackgroundColor:self.nightBackgroundColor] ;
        }] ;
    } else {
        [UIView animateWithDuration:duration animations:^{
            [self setTextColor:self.normalTextColor] ;
            [self setBackgroundColor:self.normalBackgroundColor] ;
        }] ;
    }
}

@end
