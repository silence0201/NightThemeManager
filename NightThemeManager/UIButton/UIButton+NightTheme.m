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
    return [self titleColorForState:UIControlStateHighlighted] ;
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
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setTitleColor:nightTextColorSelected forState:UIControlStateSelected] ;
    }
    objc_setAssociatedObject(self, @selector(nightTextColorSelected), nightTextColorSelected, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)normalTextColorSelected {
    UIColor *normalTextColorSelected = objc_getAssociatedObject(self, _cmd) ;
    if (normalTextColorSelected) {
        return normalTextColorSelected ;
    }
    return [self titleColorForState:UIControlStateSelected] ;
}

- (void)setNormalTextColorSelected:(UIColor *)normalTextColorSelected {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setTitleColor:normalTextColorSelected forState:UIControlStateSelected];
    }
    objc_setAssociatedObject(self, @selector(normalTextColorSelected), normalTextColorSelected, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)nightTextColorDisabled {
    UIColor *nightTextColorDisabled = objc_getAssociatedObject(self, _cmd) ;
    if (nightTextColorDisabled) {
        return nightTextColorDisabled ;
    }
    return [self titleColorForState:UIControlStateDisabled] ;
}

- (void)setNightTextColorDisabled:(UIColor *)nightTextColorDisabled {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setTitleColor:nightTextColorDisabled forState:UIControlStateDisabled] ;
    }
    objc_setAssociatedObject(self, @selector(nightTextColorDisabled), nightTextColorDisabled, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)normalTextColorDisabled {
    UIColor *normalTextColorDisabled = objc_getAssociatedObject(self, _cmd) ;
    if (normalTextColorDisabled) {
        return normalTextColorDisabled ;
    }
    return [self titleColorForState:UIControlStateDisabled] ;
}

- (void)setNormalTextColorDisabled:(UIColor *)normalTextColorDisabled {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setTitleColor:normalTextColorDisabled forState:UIControlStateDisabled] ;
    }
    objc_setAssociatedObject(self, @selector(normalTextColorDisabled), normalTextColorDisabled, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)nightImageNormal {
    UIImage *nightImageNormal = objc_getAssociatedObject(self, _cmd);
    if (nightImageNormal) {
        return nightImageNormal;
    }
    return [self imageForState:UIControlStateNormal];
}

- (void)setNightImageNormal:(UIImage *)nightImageNormal {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setImage:nightImageNormal forState:UIControlStateNormal] ;
    }
    objc_setAssociatedObject(self, @selector(nightImageNormal), nightImageNormal, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)normalImageNormal {
    UIImage *normalImageNormal = objc_getAssociatedObject(self, _cmd);
    if (normalImageNormal) {
        return normalImageNormal;
    }
    return [self imageForState:UIControlStateNormal];
}

- (void)setNormalImageNormal:(UIImage *)normalImageNormal {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setImage:normalImageNormal forState:UIControlStateNormal] ;
    }
    objc_setAssociatedObject(self, @selector(nightImageNormal), normalImageNormal, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)nightImageHighlighted {
    UIImage *nightImageHighlighted = objc_getAssociatedObject(self, _cmd);
    if (nightImageHighlighted) {
        return nightImageHighlighted;
    }
    return [self imageForState:UIControlStateHighlighted];
}

- (void)setNightImageHighlighted:(UIImage *)nightImageHighlighted {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setImage:nightImageHighlighted forState:UIControlStateHighlighted] ;
    }
    objc_setAssociatedObject(self, @selector(nightImageHighlighted), nightImageHighlighted, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)normalImageHighlighted {
    UIImage *normalImageHighlighted = objc_getAssociatedObject(self, _cmd);
    if (normalImageHighlighted) {
        return normalImageHighlighted;
    }
    return [self imageForState:UIControlStateHighlighted];
}

- (void)setNormalImageHighlighted:(UIImage *)normalImageHighlighted {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setImage:normalImageHighlighted forState:UIControlStateHighlighted] ;
    }
    objc_setAssociatedObject(self, @selector(normalImageHighlighted), normalImageHighlighted, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)nightImageSelected {
    UIImage *nightImageSelected = objc_getAssociatedObject(self, _cmd);
    if (nightImageSelected) {
        return nightImageSelected;
    }
    return [self imageForState:UIControlStateSelected];
}

- (void)setNightImageSelected:(UIImage *)nightImageSelected {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setImage:nightImageSelected forState:UIControlStateSelected] ;
    }
    objc_setAssociatedObject(self, @selector(nightImageSelected), nightImageSelected, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)normalImageSelected {
    UIImage *normalImageSelected = objc_getAssociatedObject(self, _cmd);
    if (normalImageSelected) {
        return normalImageSelected;
    }
    return [self imageForState:UIControlStateSelected];
}

- (void)setNormalImageSelected:(UIImage *)normalImageSelected {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setImage:normalImageSelected forState:UIControlStateSelected] ;
    }
    objc_setAssociatedObject(self, @selector(normalImageSelected), normalImageSelected, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)nightImageDisabled {
    UIImage *nightImageDisabled = objc_getAssociatedObject(self, _cmd);
    if (nightImageDisabled) {
        return nightImageDisabled;
    }
    return [self imageForState:UIControlStateDisabled];
}

- (void)setNightImageDisabled:(UIImage *)nightImageDisabled {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setImage:nightImageDisabled forState:UIControlStateDisabled] ;
    }
    objc_setAssociatedObject(self, @selector(nightImageDisabled), nightImageDisabled, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)normalImageDisabled {
    UIImage *normalImageDisabled = objc_getAssociatedObject(self, _cmd);
    if (normalImageDisabled) {
        return normalImageDisabled;
    }
    return [self imageForState:UIControlStateDisabled];
}

- (void)setNormalImageDisabled:(UIImage *)normalImageDisabled {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setImage:normalImageDisabled forState:UIControlStateDisabled] ;
    }
    objc_setAssociatedObject(self, @selector(nightImageDisabled), normalImageDisabled, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)nightBackgroundImageNormal {
    UIImage *nightBackgroundImageNormal = objc_getAssociatedObject(self, _cmd);
    if (nightBackgroundImageNormal) {
        return nightBackgroundImageNormal;
    }
    return [self backgroundImageForState:UIControlStateNormal];
}

- (void)setNightBackgroundImageNormal:(UIImage *)nightBackgroundImageNormal {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBackgroundImage:nightBackgroundImageNormal forState:UIControlStateNormal] ;
    }
    objc_setAssociatedObject(self, @selector(nightBackgroundImageNormal), nightBackgroundImageNormal, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)normalBackgroundImageNormal {
    UIImage *normalBackgroundImageNormal = objc_getAssociatedObject(self, _cmd);
    if (normalBackgroundImageNormal) {
        return normalBackgroundImageNormal;
    }
    return [self backgroundImageForState:UIControlStateNormal];
}

- (void)setNormalBackgroundImageNormal:(UIImage *)normalBackgroundImageNormal {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setBackgroundImage:normalBackgroundImageNormal forState:UIControlStateNormal] ;
    }
    objc_setAssociatedObject(self, @selector(normalBackgroundImageNormal), normalBackgroundImageNormal, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)nightBackgroundImageHighlighted {
    UIImage *nightBackgroundImageHighlighted = objc_getAssociatedObject(self, _cmd);
    if (nightBackgroundImageHighlighted) {
        return nightBackgroundImageHighlighted;
    }
    return [self backgroundImageForState:UIControlStateHighlighted];
}

- (void)setNightBackgroundImageHighlighted:(UIImage *)nightBackgroundImageHighlighted {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBackgroundImage:nightBackgroundImageHighlighted forState:UIControlStateHighlighted] ;
    }
    objc_setAssociatedObject(self, @selector(nightBackgroundImageHighlighted), nightBackgroundImageHighlighted, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)normalBackgroundImageHighlighted {
    UIImage *normalBackgroundImageHighlighted = objc_getAssociatedObject(self, _cmd);
    if (normalBackgroundImageHighlighted) {
        return normalBackgroundImageHighlighted;
    }
    return [self backgroundImageForState:UIControlStateHighlighted];
}

- (void)setNormalBackgroundImageHighlighted:(UIImage *)normalBackgroundImageHighlighted {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setBackgroundImage:normalBackgroundImageHighlighted forState:UIControlStateHighlighted] ;
    }
    objc_setAssociatedObject(self, @selector(normalBackgroundImageHighlighted), normalBackgroundImageHighlighted, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)nightBackgroundImageSelected {
    UIImage *nightBackgroundImageSelected = objc_getAssociatedObject(self, _cmd);
    if (nightBackgroundImageSelected) {
        return nightBackgroundImageSelected;
    }
    return [self backgroundImageForState:UIControlStateSelected];
}

- (void)setNightBackgroundImageSelected:(UIImage *)nightBackgroundImageSelected {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBackgroundImage:nightBackgroundImageSelected forState:UIControlStateSelected] ;
    }
    objc_setAssociatedObject(self, @selector(nightBackgroundImageSelected), nightBackgroundImageSelected, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)normalBackgroundImageSelected {
    UIImage *normalBackgroundImageSelected = objc_getAssociatedObject(self, _cmd);
    if (normalBackgroundImageSelected) {
        return normalBackgroundImageSelected;
    }
    return [self backgroundImageForState:UIControlStateSelected];
}

- (void)setNormalBackgroundImageSelected:(UIImage *)normalBackgroundImageSelected {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setBackgroundImage:normalBackgroundImageSelected forState:UIControlStateSelected] ;
    }
    objc_setAssociatedObject(self, @selector(normalBackgroundImageSelected), normalBackgroundImageSelected, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)nightBackgroundImageDisabled {
    UIImage *nightBackgroundImageDisabled = objc_getAssociatedObject(self, _cmd);
    if (nightBackgroundImageDisabled) {
        return nightBackgroundImageDisabled;
    }
    return [self backgroundImageForState:UIControlStateDisabled];
}

- (void)setNightBackgroundImageDisabled:(UIImage *)nightBackgroundImageDisabled {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBackgroundImage:nightBackgroundImageDisabled forState:UIControlStateDisabled] ;
    }
    objc_setAssociatedObject(self, @selector(nightBackgroundImageDisabled), nightBackgroundImageDisabled, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage *)normalBackgroundImageDisabled {
    UIImage *normalBackgroundImageDisabled = objc_getAssociatedObject(self, _cmd);
    if (normalBackgroundImageDisabled) {
        return normalBackgroundImageDisabled;
    }
    return [self backgroundImageForState:UIControlStateDisabled];
}

- (void)setNormalBackgroundImageDisabled:(UIImage *)normalBackgroundImageDisabled {
    if ([SINightThemeManager currentTheme] == SINightThemeNormal) {
        [self setBackgroundImage:normalBackgroundImageDisabled forState:UIControlStateDisabled] ;
    }
    objc_setAssociatedObject(self, @selector(normalBackgroundImageDisabled), normalBackgroundImageDisabled, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)themeChange {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [self setBackgroundColor:self.nightBackgroundColor];
        
        [self setTitleColor:self.nightTextColorNormal forState:UIControlStateNormal];
        [self setTitleColor:self.nightTextColorSelected forState:UIControlStateSelected];
        [self setTitleColor:self.nightTextColorHighlighted forState:UIControlStateHighlighted];
        [self setTitleColor:self.nightTextColorDisabled forState:UIControlStateDisabled];
        
        [self setImage:self.nightImageNormal forState:UIControlStateNormal];
        [self setImage:self.nightImageHighlighted forState:UIControlStateHighlighted];
        [self setImage:self.nightImageSelected forState:UIControlStateSelected];
        [self setImage:self.nightImageDisabled forState:UIControlStateDisabled];
        
        [self setBackgroundImage:self.nightBackgroundImageNormal forState:UIControlStateNormal];
        [self setBackgroundImage:self.nightBackgroundImageHighlighted forState:UIControlStateHighlighted];
        [self setBackgroundImage:self.nightBackgroundImageSelected forState:UIControlStateSelected];
        [self setBackgroundImage:self.nightBackgroundImageDisabled forState:UIControlStateDisabled];
    } else {
        [self setBackgroundColor:self.normalBackgroundColor];
        
        [self setTitleColor:self.nightTextColorNormal forState:UIControlStateNormal];
        [self setTitleColor:self.normalTextColorSelected forState:UIControlStateSelected];
        [self setTitleColor:self.normalTextColorHighlighted forState:UIControlStateHighlighted];
        [self setTitleColor:self.normalTextColorDisabled forState:UIControlStateDisabled];
        
        [self setImage:self.normalImageNormal forState:UIControlStateNormal];
        [self setImage:self.normalImageHighlighted forState:UIControlStateHighlighted];
        [self setImage:self.normalImageSelected forState:UIControlStateSelected];
        [self setImage:self.normalImageDisabled forState:UIControlStateDisabled];
        
        [self setBackgroundImage:self.normalBackgroundImageNormal forState:UIControlStateNormal];
        [self setBackgroundImage:self.normalBackgroundImageHighlighted forState:UIControlStateHighlighted];
        [self setBackgroundImage:self.normalBackgroundImageSelected forState:UIControlStateSelected];
        [self setBackgroundImage:self.normalBackgroundImageDisabled forState:UIControlStateDisabled];
    }
}

- (void)themeChangeWithDuration:(NSTimeInterval)duration {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [UIView animateWithDuration:duration animations:^{
            [self setBackgroundColor:self.nightBackgroundColor];
            
            [self setTitleColor:self.nightTextColorNormal forState:UIControlStateNormal];
            [self setTitleColor:self.nightTextColorSelected forState:UIControlStateSelected];
            [self setTitleColor:self.nightTextColorHighlighted forState:UIControlStateHighlighted];
            [self setTitleColor:self.nightTextColorDisabled forState:UIControlStateDisabled];
        }];
        
        [self setImage:self.nightImageNormal forState:UIControlStateNormal];
        [self setImage:self.nightImageHighlighted forState:UIControlStateHighlighted];
        [self setImage:self.nightImageSelected forState:UIControlStateSelected];
        [self setImage:self.nightImageDisabled forState:UIControlStateDisabled];
        
        [self setBackgroundImage:self.nightBackgroundImageNormal forState:UIControlStateNormal];
        [self setBackgroundImage:self.nightBackgroundImageHighlighted forState:UIControlStateHighlighted];
        [self setBackgroundImage:self.nightBackgroundImageSelected forState:UIControlStateSelected];
        [self setBackgroundImage:self.nightBackgroundImageDisabled forState:UIControlStateDisabled];
    } else {
        [UIView animateWithDuration:duration animations:^{
            [self setBackgroundColor:self.normalBackgroundColor];
            
            [self setTitleColor:self.normalTextColorNormal forState:UIControlStateNormal];
            [self setTitleColor:self.normalTextColorSelected forState:UIControlStateSelected];
            [self setTitleColor:self.normalTextColorHighlighted forState:UIControlStateHighlighted];
            [self setTitleColor:self.normalTextColorDisabled forState:UIControlStateDisabled];
        }];
        
        [self setImage:self.normalImageNormal forState:UIControlStateNormal];
        [self setImage:self.normalImageHighlighted forState:UIControlStateHighlighted];
        [self setImage:self.normalImageSelected forState:UIControlStateSelected];
        [self setImage:self.normalImageDisabled forState:UIControlStateDisabled];
        
        [self setBackgroundImage:self.normalBackgroundImageNormal forState:UIControlStateNormal];
        [self setBackgroundImage:self.normalBackgroundImageHighlighted forState:UIControlStateHighlighted];
        [self setBackgroundImage:self.normalBackgroundImageSelected forState:UIControlStateSelected];
        [self setBackgroundImage:self.normalBackgroundImageDisabled forState:UIControlStateDisabled];
    }
}
@end
