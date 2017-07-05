//
//  UIImageView+NightTheme.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/5.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "UIImageView+NightTheme.h"
#import "SINightThemeManager.h"
#import "UIView+NightTheme.h"
#import <objc/runtime.h>

@implementation UIImageView (NightTheme)

- (UIImage *)nightImage {
    UIImage *nightImage = objc_getAssociatedObject(self, _cmd) ;
    if (nightImage) {
        return nightImage ;
    }
    return self.image ;
}

- (void)setNightImage:(UIImage *)nightImage {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setImage:nightImage];
    }
    objc_setAssociatedObject(self, @selector(nightImage), nightImage, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (UIImage *)normalImage {
    UIImage *normalImage = objc_getAssociatedObject(self, _cmd) ;
    if (normalImage) {
        return normalImage ;
    }
    return self.image ;
}

- (void)setNormalImage:(UIImage *)normalImage {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setImage:normalImage];
    }
    objc_setAssociatedObject(self, @selector(normalImage), normalImage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)themeChange {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setBackgroundColor:self.normalBackgroundColor] ;
        [self setImage:self.normalImage] ;
    }else {
        [self setBackgroundColor:self.nightBackgroundColor];
        [self setImage:self.nightImage];
    }
}

- (void)themeChangeWithDuration:(NSTimeInterval)duration {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [UIView animateWithDuration:duration animations:^{
            [self setBackgroundColor:self.nightBackgroundColor] ;
        }] ;
        [self setImage:self.nightImage] ;
    }else {
        [UIView animateWithDuration:duration animations:^{
            [self setBackgroundColor:self.normalBackgroundColor] ;
        }] ;
        [self setImage:self.normalImage];
    }
}

@end
