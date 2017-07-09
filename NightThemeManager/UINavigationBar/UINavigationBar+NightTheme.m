//
//  UINavigationBar+NightTheme.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/5.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "UINavigationBar+NightTheme.h"
#import "UIColor+NightTheme.h"
#import "UIView+NightTheme.h"
#import "SINightThemeManager.h"
#import <objc/runtime.h>

static CGFloat const stepDuration = 0.01;

@implementation UINavigationBar (NightTheme)

- (UIColor *)nightTintColor {
    UIColor *nightTintColor = objc_getAssociatedObject(self, _cmd);
    if (nightTintColor) {
        return nightTintColor ;
    }
    return self.tintColor ;
}

- (void)setNightTintColor:(UIColor *)nightTintColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setTintColor:nightTintColor] ;
    }
    objc_setAssociatedObject(self, @selector(nightTintColor), nightTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)normalTintColor {
    UIColor *normalTintColor = objc_getAssociatedObject(self, _cmd) ;
    if (normalTintColor) {
        return normalTintColor ;
    }
    return self.tintColor ;
}

- (void)setNormalTintColor:(UIColor *)normalTintColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setTintColor:normalTintColor];
    }
    objc_setAssociatedObject(self, @selector(normalTintColor), normalTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)nightBarTintColor {
    UIColor *nightBarTintColor = objc_getAssociatedObject(self, _cmd);
    if (nightBarTintColor) {
        return nightBarTintColor;
    }
    return self.barTintColor ;
}

- (void)setNightBarTintColor:(UIColor *)nightBarTintColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBarTintColor:nightBarTintColor];
    }
    objc_setAssociatedObject(self, @selector(nightBarTintColor), nightBarTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)normalBarTintColor {
    UIColor *normalBarTintColor = objc_getAssociatedObject(self, _cmd);
    if (normalBarTintColor) {
        return normalBarTintColor ;
    }
    return self.barTintColor ;
}

- (void)setNormalBarTintColor:(UIColor *)normalBarTintColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setBarTintColor:normalBarTintColor] ;
    }
    objc_setAssociatedObject(self, @selector(normalBarTintColor), normalBarTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)nightTitleColor {
    UIColor *nightTitleColor = objc_getAssociatedObject(self, _cmd);
    if (nightTitleColor) {
        return nightTitleColor;
    }
    return [[self titleTextAttributes] objectForKey:NSForegroundColorAttributeName] ;
}

- (void)setNightTitleColor:(UIColor *)nightTitleColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setTitleTextAttributes:@{NSForegroundColorAttributeName:nightTitleColor}] ;
    }
    objc_setAssociatedObject(self, @selector(nightTitleColor), nightTitleColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)normalTitleColor {
    UIColor *normalTitleColor = objc_getAssociatedObject(self, _cmd);
    if (normalTitleColor) {
        return normalTitleColor;
    }
    return [[self titleTextAttributes] objectForKey:NSForegroundColorAttributeName] ;
}

- (void)setNormalTitleColor:(UIColor *)normalTitleColor {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setTitleTextAttributes:@{NSForegroundColorAttributeName:normalTitleColor}] ;
    }
    objc_setAssociatedObject(self, @selector(normalTitleColor), normalTitleColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)themeChange {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBackgroundColor:self.nightBackgroundColor] ;
        
        [self setTintColor:self.nightTintColor];
        [self setBarTintColor:self.nightBarTintColor];
        [self setTitleTextAttributes:@{NSForegroundColorAttributeName:self.nightTitleColor}];
    }else {
        [self setBackgroundColor:self.normalBackgroundColor] ;
        
        [self setTintColor:self.normalTintColor];
        [self setBarTintColor:self.normalBarTintColor];
        [self setTitleTextAttributes:@{NSForegroundColorAttributeName:self.normalTitleColor}];
    }
}

- (void)themeChangeWithDuration:(NSTimeInterval)duration {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        NSArray *colorArray = [UIColor arrayFromColor:self.barTintColor ToColor:self.nightBarTintColor duration:duration stepDuration:stepDuration];
        if (colorArray) {
            [self animateWithArray:colorArray];
        }
        [UIView animateWithDuration:duration animations:^{
            [self setTintColor:self.nightTintColor];
            [self setBackgroundColor:self.nightBackgroundColor];
        }];
    } else {
        NSArray *colorArray = [UIColor arrayFromColor:self.barTintColor ToColor:self.normalBarTintColor duration:duration stepDuration:stepDuration];
        if (colorArray) {
            [self animateWithArray:colorArray];
        }
        
        [UIView animateWithDuration:duration animations:^{
            [self setTintColor:self.normalTintColor];
            [self setBackgroundColor:self.normalBackgroundColor];
        }];
    }
}

- (void)animateWithArray:(NSArray *)array{
    NSUInteger counter = 0;
    for (UIColor *color in array) {
        double delayInSeconds = stepDuration * counter++;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            [UIView animateWithDuration:stepDuration animations:^{
                self.barTintColor = color;
            }];
        });
    }
}


@end
