//
//  FirstViewController.m
//  ZGSTransfer-number
//
//  Created by Apple on 16/6/30.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import "FirstViewController.h"
#import "UIButton+GSButton.h"
#import "SecondViewController.h"
#import "UILabel+GSLabel.m"
#import "SingleTon.h"
#import "AppDelegate.h"
@interface FirstViewController ()<ShowTextDelegate>//3.遵循协议<让代理知道要执行的约定方法>

{
    UILabel *_label;
    
}
@end

@implementation FirstViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
//    //方法1：每个程序有且只有一个UIApplication  是一个单例
//    AppDelegate *appdelegate = [UIApplication sharedApplication].delegate;
//    
//    _label.text = appdelegate.showText;

    
    
//    //单例方法传值
//    SingleTon *single = [SingleTon GSsharesingeleTon];
//    
//    _label.text=single.ShowText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self CreatUI];
    
}

-(void)CreatUI{
    
    _label =[[UILabel alloc]init];
    
    [_label GS_SetMyLabelWithTextName:@"去输入"];
    
    _label.frame = CGRectMake(50, 150, 300, 40);
    
    [self.view addSubview:_label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [button GSButtonWithButtonName:@"下一页"];
    
    button.frame = CGRectMake(150, 400, 100, 50);
    
    [button addTarget:self action:@selector(playInputClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
//    //添加监听 名字为：showText  的通知
//    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
// 
//    [nc addObserver:self selector:@selector(showText:) name:@"showText" object:nil];

}

-(void)playInputClick{
    
    SecondViewController *Second =[[SecondViewController alloc]init];
    
    //4.建立代理关系
    Second.delegate = self;

    [self presentViewController:Second animated:YES completion:nil];
    
    
}

#pragma mark -代理方法协议方法的实现
////5.实现代理方法
//-(void)showText:(NSString *)text
//{
//    _label.text = text;
//}
////可选的协议方法，带返回值的
//-(UIColor*)colorForShowText:(NSString *)text
//{
//    _label.text = text;
//    
//    return [UIColor greenColor];
//}

#pragma mark -通知方式传值
//接收到通知时调用的方法
//-(void)showText:(NSNotification *)notify
//{
//    
//    /* 对应第一种方式的第1种方式的接收解析
//     //取出通知携带的对象
//     NSString *showText = notify.object;
//     //显示文字
//     */
//    /*
//     //对应第一种方式的第2种方式的接收解析
//     NSDictionary *userInfo = notify.userInfo;
//     //取出文字显示
//     _label.text = [userInfo objectForKey:@"showText"];
//     */
//    
//    //对应第二种发送方式
//    //    _label.text = notify.object;
//    
//    //对应第三种发送方式
//    //取出发送的文字
//    NSString *userInfo = [notify.userInfo objectForKey:@"showText"];
//    //显示文字
//    _label.text = userInfo;
//    
//    
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
