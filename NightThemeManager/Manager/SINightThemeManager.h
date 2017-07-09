//
//  SINightThemeManager.h
//  NightThemeManagerDemo
//
//  Created by Silence on 2017/7/3.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

/// 主题将要改变发出的通知名
FOUNDATION_EXTERN NSString *const SINightThemeChangeNotification ;
/// 将要变为暗主题发出的通知名
FOUNDATION_EXTERN NSString *const SINightFallingNotification ;
/// 将要变为亮主题发出的通知名
FOUNDATION_EXTERN NSString *const SIDawnComingNotification ;

/// 通知userinfo中对应原来主题的Key
FOUNDATION_EXTERN NSString *const SINightThemeOldThemeKey ;
/// 通知userinfo中对应要改变为的主题Key
FOUNDATION_EXTERN NSString *const SINightThemeNewThemeKey ;

typedef enum : NSInteger {
    SINightThemeNormal, // 默认主题
    SINightThemeNight,  // 暗主题
} SINightTheme;

/// 非正式协议,要想自己定义的UIView支持需要实现协议中的方法
@protocol SINightThemeProtocol <NSObject>

/// 主题改变是进行调用
- (void)themeChange ;
/// 主题改变时调用,duration为过渡时间
- (void)themeChangeWithDuration:(NSTimeInterval)duration ;

@end

@interface SINightThemeManager : NSObject

/// 默认单例
+ (instancetype)sharedInstance ;
/// 当前主题类型
+ (SINightTheme)currentTheme ;

/// 改变为暗主题
+ (void)nightFalling ;
/// 改变为默认主题
+ (void)dawnComing ;

/// 改变主题
+ (void)changeTheme ;
/// 改变对应UIView的主题
+ (void)changeTheme:(UIView* )view ;
/// 改变对应UIView的主题,duration为过渡时间
+ (void)changeTheme:(UIView* )view withDuartion:(NSTimeInterval)duration ;

@end
