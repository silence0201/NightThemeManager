//
//  UINavigationBar+NightTheme.h
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/5.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (NightTheme)

@property (nonatomic,strong) IBInspectable UIColor *nightTintColor ;
@property (nonatomic,strong) IBInspectable UIColor *normalTintColor ;

@property (nonatomic,strong) IBInspectable UIColor *nightBarTintColor ;
@property (nonatomic,strong) IBInspectable UIColor *normalBarTintColor ;

- (void)themeChange ;
- (void)themeChangeWithDuration:(NSTimeInterval)duration ;

@end
