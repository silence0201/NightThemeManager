//
//  UILabel+NightTheme.h
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/4.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (NightTheme)

@property (nonatomic,strong) IBInspectable UIColor *nightTextColor ;
@property (nonatomic,strong) IBInspectable UIColor *normalTextColor ;

- (void)themeChange ;
- (void)themeChangeWithDuration:(NSTimeInterval)duration ;

@end
