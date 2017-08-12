//
//  UIColor+NightTheme.h
//  NightThemeManagerDemo
//
//  Created by Silence on 2017/7/5.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (NightTheme)

+ (NSArray *)arrayFromColor:(UIColor *)fromColor
                    ToColor:(UIColor *)toColor
                   duration:(NSTimeInterval)duration
               stepDuration:(NSTimeInterval)stepDuration;

@end
