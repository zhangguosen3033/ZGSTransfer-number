//
//  SecondViewController.h
//  ZGSTransfer-number
//
//  Created by Apple on 16/6/30.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import <UIKit/UIKit.h>
//1.驱动方声明协议，约定执行的方法
@protocol ShowTextDelegate <NSObject>

//@optional,可选的协议方法
@required //代理方必须实现的方法
-(void)showText:(NSString *)text;

@optional
-(UIColor *)colorForShowText:(NSString *)text;

@end

@interface SecondViewController : UIViewController

//2.声明代理属性，委托所付出的代价
@property (nonatomic, weak) id <ShowTextDelegate> delegate;
@end
