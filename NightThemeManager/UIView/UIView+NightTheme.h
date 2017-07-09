//
//  UIView+NightTheme.h
//  NightThemeManagerDemo
//
//  Created by Silence on 2017/7/3.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NightTheme)

@property (nonatomic,strong) IBInspectable UIColor *nightBackgroundColor ;
@property (nonatomic,strong) IBInspectable UIColor *normalBackgroundColor ;

- (void)themeChange ;
- (void)themeChangeWithDuration:(NSTimeInterval)duration ;

@end
