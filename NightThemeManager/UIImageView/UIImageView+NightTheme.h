//
//  UIImageView+NightTheme.h
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/5.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (NightTheme)

@property (nonatomic,strong) IBInspectable UIImage *nightImage ;
@property (nonatomic,strong) IBInspectable UIImage *normalImage ;

- (void)themeChange ;
- (void)themeChangeWithDuration:(NSTimeInterval)duration ;

@end
