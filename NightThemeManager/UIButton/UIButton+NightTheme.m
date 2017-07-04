//
//  UIButton+NightTheme.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/4.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "UIButton+NightTheme.h"
#import "UIView+NightTheme.h"
#import "SINightThemeManager.h"
#import <objc/runtime.h>

@implementation UIButton (NightTheme)

- (UIColor *)nightTextColorNormal {
    UIColor *nightTextColorNormal = objc_getAssociatedObject(self, _cmd) ;
    if (nightTextColorNormal) {
        return nightTextColorNormal ;
    }
    return [self titleColorForState:UIControlStateNormal] ;
}

- (void)setNightTextColorNormal:(UIColor *)nightTextColorNormal {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setTitleColor:nightTextColorNormal forState:UIControlStateNormal] ;
    }
    objc_setAssociatedObject(self, @selector(nightTextColorNormal), nightTextColorNormal, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (UIColor *)normalTextColorNormal {
    UIColor *normalTextColorNormal = objc_getAssociatedObject(self, _cmd) ;
    if (normalTextColorNormal) {
        return normalTextColorNormal ;
    }
    return [self titleColorForState:UIControlStateNormal] ;
}

- (void)setNormalTextColorNormal:(UIColor *)normalTextColorNormal {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setTitleColor:normalTextColorNormal forState:UIControlStateNormal] ;
    }
    objc_setAssociatedObject(self, @selector(normalTextColorNormal), normalTextColorNormal, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (UIColor *)nightTextColorHighlighted {
    UIColor *nightTextColorHighlighted = objc_getAssociatedObject(self, _cmd) ;
    if (nightTextColorHighlighted) {
        return nightTextColorHighlighted ;
    }
    return [self titleColorForState:UIControlStateNormal] ;
}

- (void)setNightTextColorHighlighted:(UIColor *)nightTextColorHighlighted {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setTitleColor:nightTextColorHighlighted forState:UIControlStateHighlighted] ;
    }
    objc_setAssociatedObject(self, @selector(nightTextColorHighlighted), nightTextColorHighlighted, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (UIColor *)normalTextColorHighlighted {
    UIColor *normalTextColorHighlighted = objc_getAssociatedObject(self, _cmd) ;
    if (normalTextColorHighlighted) {
        return normalTextColorHighlighted ;
    }
    return [self titleColorForState:UIControlStateHighlighted] ;
}

- (void)setNormalTextColorHighlighted:(UIColor *)normalTextColorHighlighted {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setTitleColor:normalTextColorHighlighted forState:UIControlStateHighlighted] ;
    }
    objc_setAssociatedObject(self, @selector(normalTextColorHighlighted), normalTextColorHighlighted, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
}

- (UIColor *)nightTextColorSelected {
    return nil ;
}

- (void)setNightTextColorSelected:(UIColor *)nightTextColorSelected {
    
}

- (UIColor *)normalTextColorSelected {
    return nil ;
}

- (void)setNormalTextColorSelected:(UIColor *)normalTextColorSelected {
    
}

- (UIColor *)nightTextColorDisabled {
    return nil ;
}

- (void)setNightTextColorDisabled:(UIColor *)nightTextColorDisabled {
    
}

- (UIColor *)normalTextColorDisabled {
    return nil ;
}

- (void)setNormalTextColorDisabled:(UIColor *)normalTextColorDisabled {
    
}

- (UIImage *)nightImageNormal {
    return nil ;
}

- (void)setNightImageNormal:(UIImage *)nightImageNormal {
    
}

- (UIImage *)normalImageNormal {
    return nil ;
}

- (void)setNormalImageNormal:(UIImage *)normalImageNormal {
    
}

- (UIImage *)nightImageHighlighted {
    return nil ;
}

- (void)setNightImageHighlighted:(UIImage *)nightImageHighlighted {
    
}

- (UIImage *)normalImageHighlighted {
    return nil ;
}

- (void)setNormalImageHighlighted:(UIImage *)normalImageHighlighted {
    
}

- (UIImage *)nightImageSelected {
    return nil ;
}

- (void)setNightImageSelected:(UIImage *)nightImageSelected {
    
}

- (UIImage *)normalImageSelected {
    return nil ;
}

- (void)setNormalImageSelected:(UIImage *)normalImageSelected {
    
}

- (UIImage *)nightImageDisabled {
    return nil ;
}

- (void)setNightImageDisabled:(UIImage *)nightImageDisabled {
    
}

- (UIImage *)normalImageDisabled {
    return nil ;
}

- (void)setNormalImageDisabled:(UIImage *)normalImageDisabled {
    
}

- (UIImage *)nightBackgroundImageNormal {
    return nil ;
}

- (void)setNightBackgroundImageNormal:(UIImage *)nightBackgroundImageNormal {
    
}

- (UIImage *)normalBackgroundImageNormal {
    return nil ;
}

- (void)setNormalBackgroundImageNormal:(UIImage *)normalBackgroundImageNormal {
    
}

- (UIImage *)nightBackgroundImageHighlighted {
    return nil ;
}

- (void)setNightBackgroundImageHighlighted:(UIImage *)nightBackgroundImageHighlighted {
    
}

- (UIImage *)normalBackgroundImageHighlighted {
    return nil ;
}

- (void)setNormalBackgroundImageHighlighted:(UIImage *)normalBackgroundImageHighlighted {
    
}

- (UIImage *)nightBackgroundImageSelected {
    return nil;
}

- (void)setNightBackgroundImageSelected:(UIImage *)nightBackgroundImageSelected {
    
}

- (UIImage *)normalBackgroundImageSelected {
    return nil;
}

- (void)setNormalBackgroundImageSelected:(UIImage *)normalBackgroundImageSelected {
    
}

- (UIImage *)nightBackgroundImageDisabled {
    return nil ;
}

- (void)setNightBackgroundImageDisabled:(UIImage *)normalBackgroundImageDisabled {
    
}

- (UIImage *)normalBackgroundImageDisabled {
    return nil ;
}

- (void)setNormalBackgroundImageDisabled:(UIImage *)normalBackgroundImageDisabled {
    
}

@end
