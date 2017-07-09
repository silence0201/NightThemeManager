//
//  SINightThemeManager.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/3.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "SINightThemeManager.h"
#import "UIView+NightTheme.h"

NSString *const SINightThemeChangeNotification = @"SINightThemeChangeNotification";
NSString *const SINightFallingNotification = @"SINightFallingNotification";
NSString *const SIDawnComingNotification = @"SIDawnComingNotification";

NSString *const SINightThemeOldThemeKey = @"SINightThemeOldThemeKey" ;
NSString *const SINightThemeNewThemeKey = @"SINightThemeNewThemeKey" ;

@interface SINightThemeManager ()

@property (nonatomic,assign) SINightTheme theme ;

@end

@implementation SINightThemeManager

+ (instancetype)sharedInstance {
    static SINightThemeManager *manager = nil ;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc]init] ;
    });
    return manager ;
}

+ (void)nightFalling {
    [SINightThemeManager sharedInstance].theme = SINightThemeNight ;
}

+ (void)dawnComing {
    [SINightThemeManager sharedInstance].theme = SINightThemeNormal ;
}

+ (SINightTheme)currentTheme {
    return [SINightThemeManager sharedInstance].theme ;
}

- (void)setTheme:(SINightTheme)theme {
    if (_theme == theme) return ;
    NSDictionary *info = @{SINightThemeOldThemeKey : @(_theme),
                           SINightThemeNewThemeKey : @(theme)} ;
    _theme = theme ;
    [SINightThemeManager changeTheme:[UIApplication sharedApplication].keyWindow.subviews.lastObject ];
    [[NSNotificationCenter defaultCenter] postNotificationName:SINightThemeChangeNotification object:nil userInfo:info] ;
    if(theme == SINightThemeNight) {
        [[NSNotificationCenter defaultCenter] postNotificationName:SINightFallingNotification object:nil userInfo:info] ;
    }else {
        [[NSNotificationCenter defaultCenter] postNotificationName:SIDawnComingNotification object:nil userInfo:info] ;
    }
}

+ (void)changeTheme {
    if ([SINightThemeManager currentTheme] == SINightThemeNight) {
        [SINightThemeManager dawnComing] ;
    }else {
        [SINightThemeManager nightFalling] ;
    }
}

+ (void)changeTheme:(UIView* )view {
    if ([view respondsToSelector:@selector(themeChange)]) {
        [view themeChange] ;
    }
    
    if ([view subviews]) {
        for (UIView *subView in [view subviews]) {
            [self changeTheme:subView] ;
            if ([subView respondsToSelector:@selector(themeChange)]) {
                [subView themeChange] ;
            }
        }
    }
}

+ (void)changeTheme:(UIView *)view withDuartion:(NSTimeInterval)duration {
    if ([view respondsToSelector:@selector(changeTheme:withDuartion:)]) {
        [view themeChangeWithDuration:duration] ;
    }
    
    if ([view subviews]) {
        for (UIView *subView in [view subviews]) {
            [self changeTheme:subView withDuartion:duration] ;
            if ([subView respondsToSelector:@selector(themeChangeWithDuration:)]) {
                [subView themeChangeWithDuration:duration] ;
            }
        }
    }
}

@end
