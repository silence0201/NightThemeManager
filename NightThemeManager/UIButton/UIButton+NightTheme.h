//
//  UIButton+NightTheme.h
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/4.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (NightTheme)

@property (nonatomic,strong) IBInspectable UIColor *nightTextColorNormal ;
@property (nonatomic,strong) IBInspectable UIColor *normalTextColorNormal ;
@property (nonatomic,strong) IBInspectable UIColor *nightTextColorHighlighted ;
@property (nonatomic,strong) IBInspectable UIColor *normalTextColorHighlighted ;
@property (nonatomic,strong) IBInspectable UIColor *nightTextColorSelected ;
@property (nonatomic,strong) IBInspectable UIColor *normalTextColorSelected ;
@property (nonatomic,strong) IBInspectable UIColor *nightTextColorDisabled ;
@property (nonatomic,strong) IBInspectable UIColor *normalTextColorDisabled ;

@property (nonatomic,strong) IBInspectable UIImage *nightImageNormal ;
@property (nonatomic,strong) IBInspectable UIImage *normalImageNormal ;
@property (nonatomic,strong) IBInspectable UIImage *nightImageHighlighted ;
@property (nonatomic,strong) IBInspectable UIImage *normalImageHighlighted ;
@property (nonatomic,strong) IBInspectable UIImage *nightImageSelected ;
@property (nonatomic,strong) IBInspectable UIImage *normalImageSelected ;
@property (nonatomic,strong) IBInspectable UIImage *nightImageDisabled ;
@property (nonatomic,strong) IBInspectable UIImage *normalImageDisabled ;

@property (nonatomic,strong) IBInspectable UIImage *nightBackgroundImageNormal ;
@property (nonatomic,strong) IBInspectable UIImage *normalBackgroundImageNormal ;
@property (nonatomic,strong) IBInspectable UIImage *nightBackgroundImageHighlighted ;
@property (nonatomic,strong) IBInspectable UIImage *normalBackgroundImageHighlighted ;
@property (nonatomic,strong) IBInspectable UIImage *nightBackgroundImageSelected ;
@property (nonatomic,strong) IBInspectable UIImage *normalBackgroundImageSelected ;
@property (nonatomic,strong) IBInspectable UIImage *nightBackgroundImageDisabled ;
@property (nonatomic,strong) IBInspectable UIImage *normalBackgroundImageDisabled ;

- (void)themeChange ;
- (void)themeChangeWithDuration:(NSTimeInterval)duration ;

@end
