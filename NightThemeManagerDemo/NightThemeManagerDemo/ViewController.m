//
//  ViewController.m
//  NightThemeManagerDemo
//
//  Created by 杨晴贺 on 2017/7/3.
//  Copyright © 2017年 Silence. All rights reserved.
//

#import "ViewController.h"
#import "NightTheme.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)changeAction:(id)sender {
    [SINightThemeManager changeTheme] ;
}


@end
