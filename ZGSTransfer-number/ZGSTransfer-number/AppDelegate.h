//
//  AppDelegate.h
//  ZGSTransfer-number
//
//  Created by Apple on 16/6/30.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//方法1：
// UIApplicationMain()会创建一个AppDelegate的单例，我们利用它来实现数据共享
// 用来存储输入文字
@property (nonatomic, copy) NSString *showText;
@end

