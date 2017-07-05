//
//  UITableView+NightTheme.h
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/5.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (NightTheme)

@property (nonatomic, strong) IBInspectable UIColor *nightSeparatorColor;
@property (nonatomic, strong) IBInspectable UIColor *normalSeparatorColor;

- (void)themeChange ;
- (void)themeChangeWithDuration:(NSTimeInterval)duration ;

@end
