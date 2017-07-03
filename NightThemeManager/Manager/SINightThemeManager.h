//
//  SINightThemeManager.h
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/3.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

FOUNDATION_EXTERN NSString *const SINightThemeChangeNotification ;
FOUNDATION_EXTERN NSString *const SINightFallingNotification ;
FOUNDATION_EXTERN NSString *const SIDawnComingNotification ;

FOUNDATION_EXTERN NSString *const SINightThemeOldThemeKey ;
FOUNDATION_EXTERN NSString *const SINightThemeNewThemeKey ;

typedef enum : NSInteger {
    SINightThemeNormal,
    SINightThemeNight,
} SINightTheme;

@protocol SINightThemeProtocol <NSObject>

- (void)themeChange ;
- (void)themeChangeWithDuration:(NSTimeInterval)duration ;
- (NSArray *)subviews ;

@end

@interface SINightThemeManager : NSObject

+ (instancetype)sharedInstance ;
+ (SINightTheme)currentTheme ;

+ (void)nightFalling ;
+ (void)dawnComing ;

+ (void)changeTheme ;
+ (void)changeTheme:(UIView* )view ;
+ (void)changeTheme:(UIView* )view withDuartion:(NSTimeInterval)duration ;

@end
