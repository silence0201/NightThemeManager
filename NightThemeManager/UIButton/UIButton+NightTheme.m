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
    UIColor *nightTextColorSelected = objc_getAssociatedObject(self, _cmd) ;
    if (nightTextColorSelected) {
        return nightTextColorSelected ;
    }
    return [self titleColorForState:UIControlStateSelected] ;
}

- (void)setNightTextColorSelected:(UIColor *)nightTextColorSelected {
    
}

- (UIColor *)normalTextColorSelected {
    UIColor *normalTextColorSelected = objc_getAssociatedObject(self, _cmd) ;
    if (normalTextColorSelected) {
        return normalTextColorSelected ;
    }
    return [self titleColorForState:UIControlStateSelected] ;
}

- (void)setNormalTextColorSelected:(UIColor *)normalTextColorSelected {
    
}

- (UIColor *)nightTextColorDisabled {
    UIColor *nightTextColorDisabled = objc_getAssociatedObject(self, _cmd) ;
    if (nightTextColorDisabled) {
        return nightTextColorDisabled ;
    }
    return [self titleColorForState:UIControlStateDisabled] ;
}

- (void)setNightTextColorDisabled:(UIColor *)nightTextColorDisabled {
    
}

- (UIColor *)normalTextColorDisabled {
    UIColor *normalTextColorDisabled = objc_getAssociatedObject(self, _cmd) ;
    if (normalTextColorDisabled) {
        return normalTextColorDisabled ;
    }
    return [self titleColorForState:UIControlStateDisabled] ;
}

- (void)setNormalTextColorDisabled:(UIColor *)normalTextColorDisabled {
    
}

- (UIImage *)nightImageNormal {
    UIImage *nightImageNormal = objc_getAssociatedObject(self, _cmd);
    if (nightImageNormal) {
        return nightImageNormal;
    }
    return [self imageForState:UIControlStateNormal];
}

- (void)setNightImageNormal:(UIImage *)nightImageNormal {
    
}

- (UIImage *)normalImageNormal {
    UIImage *normalImageNormal = objc_getAssociatedObject(self, _cmd);
    if (normalImageNormal) {
        return normalImageNormal;
    }
    return [self imageForState:UIControlStateNormal];
}

- (void)setNormalImageNormal:(UIImage *)normalImageNormal {
    
}

- (UIImage *)nightImageHihlighted {
    UIImage *nightImageHihlighted = objc_getAssociatedObject(self, _cmd);
    if (nightImageHihlighted) {
        return nightImageHihlighted;
    }
    return [self imageForState:UIControlStateHighlighted];
}

- (void)setNightImageHighlighted:(UIImage *)nightImageHighlighted {
    
}

- (UIImage *)normalImageHighlighted {
    UIImage *normalImageHighlighted = objc_getAssociatedObject(self, _cmd);
    if (normalImageHighlighted) {
        return normalImageHighlighted;
    }
    return [self imageForState:UIControlStateHighlighted];
}

- (void)setNormalImageHighlighted:(UIImage *)normalImageHighlighted {
    
}

- (UIImage *)nightImageSelected {
    UIImage *nightImageSelected = objc_getAssociatedObject(self, _cmd);
    if (nightImageSelected) {
        return nightImageSelected;
    }
    return [self imageForState:UIControlStateSelected];
}

- (void)setNightImageSelected:(UIImage *)nightImageSelected {
    
}

- (UIImage *)normalImageSelected {
    UIImage *normalImageSelected = objc_getAssociatedObject(self, _cmd);
    if (normalImageSelected) {
        return normalImageSelected;
    }
    return [self imageForState:UIControlStateSelected];
}

- (void)setNormalImageSelected:(UIImage *)normalImageSelected {
    
}

- (UIImage *)nightImageDisabled {
    UIImage *nightImageDisabled = objc_getAssociatedObject(self, _cmd);
    if (nightImageDisabled) {
        return nightImageDisabled;
    }
    return [self imageForState:UIControlStateDisabled];
}

- (void)setNightImageDisabled:(UIImage *)nightImageDisabled {
    
}

- (UIImage *)normalImageDisabled {
    UIImage *normalImageDisabled = objc_getAssociatedObject(self, _cmd);
    if (normalImageDisabled) {
        return normalImageDisabled;
    }
    return [self imageForState:UIControlStateDisabled];
}

- (void)setNormalImageDisabled:(UIImage *)normalImageDisabled {
    
}

- (UIImage *)nightBackgroundImageNormal {
    UIImage *nightBackgroundImageNormal = objc_getAssociatedObject(self, _cmd);
    if (nightBackgroundImageNormal) {
        return nightBackgroundImageNormal;
    }
    return [self backgroundImageForState:UIControlStateNormal];
}

- (void)setNightBackgroundImageNormal:(UIImage *)nightBackgroundImageNormal {
    
}

- (UIImage *)normalBackgroundImageNormal {
    UIImage *normalBackgroundImageNormal = objc_getAssociatedObject(self, _cmd);
    if (normalBackgroundImageNormal) {
        return normalBackgroundImageNormal;
    }
    return [self backgroundImageForState:UIControlStateNormal];
}

- (void)setNormalBackgroundImageNormal:(UIImage *)normalBackgroundImageNormal {
    
}

- (UIImage *)nightBackgroundImageHighlighted {
    UIImage *nightBackgroundImageHighlighted = objc_getAssociatedObject(self, _cmd);
    if (nightBackgroundImageHighlighted) {
        return nightBackgroundImageHighlighted;
    }
    return [self backgroundImageForState:UIControlStateHighlighted];
}

- (void)setNightBackgroundImageHighlighted:(UIImage *)nightBackgroundImageHighlighted {
    
}

- (UIImage *)normalBackgroundImageHighlighted {
    UIImage *normalBackgroundImageHighlighted = objc_getAssociatedObject(self, _cmd);
    if (normalBackgroundImageHighlighted) {
        return normalBackgroundImageHighlighted;
    }
    return [self backgroundImageForState:UIControlStateHighlighted];
}

- (void)setNormalBackgroundImageHighlighted:(UIImage *)normalBackgroundImageHighlighted {
    
}

- (UIImage *)nightBackgroundImageSelected {
    UIImage *nightBackgroundImageSelected = objc_getAssociatedObject(self, _cmd);
    if (nightBackgroundImageSelected) {
        return nightBackgroundImageSelected;
    }
    return [self backgroundImageForState:UIControlStateSelected];
}

- (void)setNightBackgroundImageSelected:(UIImage *)nightBackgroundImageSelected {
    
}

- (UIImage *)normalBackgroundImageSelected {
    UIImage *normalBackgroundImageSelected = objc_getAssociatedObject(self, _cmd);
    if (normalBackgroundImageSelected) {
        return normalBackgroundImageSelected;
    }
    return [self backgroundImageForState:UIControlStateSelected];
}

- (void)setNormalBackgroundImageSelected:(UIImage *)normalBackgroundImageSelected {
    
}

- (UIImage *)nightBackgroundImageDisabled {
    UIImage *nightBackgroundImageDisabled = objc_getAssociatedObject(self, _cmd);
    if (nightBackgroundImageDisabled) {
        return nightBackgroundImageDisabled;
    }
    return [self backgroundImageForState:UIControlStateDisabled];
}

- (void)setNightBackgroundImageDisabled:(UIImage *)normalBackgroundImageDisabled {
    
}

- (UIImage *)normalBackgroundImageDisabled {
    UIImage *normalBackgroundImageDisabled = objc_getAssociatedObject(self, _cmd);
    if (normalBackgroundImageDisabled) {
        return normalBackgroundImageDisabled;
    }
    return [self backgroundImageForState:UIControlStateDisabled];
}

- (void)setNormalBackgroundImageDisabled:(UIImage *)normalBackgroundImageDisabled {
    
}

@end
