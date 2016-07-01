//
//  SecondViewController.m
//  ZGSTransfer-number
//
//  Created by Apple on 16/6/30.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import "SecondViewController.h"
#import "UITextField+GSTextFiled.h"
#import "AppDelegate.h"
#import "SingleTon.h"
@interface SecondViewController ()
{
    UITextField *_Filed;
    
}
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self CreatUI];


}

-(void)CreatUI{
   
    _Filed = [[UITextField alloc]init];
    
    _Filed.frame = CGRectMake(50, 200, 300, 40);
    
    [_Filed GS_SetMyTextFiledWithPlaceholder:@"请输入要传递的内容"];
    
    [self.view addSubview:_Filed];
    
    
}

//触摸结束时调用此方法
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    //_textFiled 放弃第一响应
    [_Filed resignFirstResponder];
    
//    //方法1.利用Appdelegate单例对象传值
//    [self Transfermethod1];
    
//    //方法2.利用代理实现传值
//    [self Transfermethod2];
 
//    //方法3.通知传值
//    [self Transfermethod3];
    
//    //方法4.单例传值
//    [self Transfermethod4];
    
    [self Transfermethod5];
    
    
    
    
    
}

#pragma mark -Appdelegate单例对象单例传值
-(void)Transfermethod1{
  
    //取到Appdelegate单例对象
    //[UIApplication sharedApplication] 拿到UIApplicationMain函数中创建的UIApplication对象
    AppDelegate *appD = [UIApplication sharedApplication].delegate;
    //刷新输入内容
    appD.showText = _Filed.text;

    //退出当前界面
    [self dismissViewControllerAnimated:YES completion:nil];

}
#pragma mark -代理传值
-(void)Transfermethod2{
    
    //此处可以认为是界面2想去改变界面1的内容  因此  创建协议方法 指定界面1为代理   界面1遵守协议 执行界面2的协议方法
    /**
     代理注意的点
     *分清驱动方和代理方法<前提条件>
     1.驱动方，声明协议，协议中约定方法
     2.驱动方，声明delegate属性 <付出的代价>
     3.代理方，遵循协议
     4.建立代理关系
     5.代理方，实现协议<协议中约定@required>方法,@optional选实现
     6.驱动方，在合适的时间驱动代理执行协议方法
     */

 
//    if (_delegate && [_delegate respondsToSelector:@selector(showText:)]) {
        //6.驱动方驱动代理调用协议方法
        [_delegate showText:_Filed.text];
//    }
    
    UIColor *color = [_delegate colorForShowText:_Filed.text];
    self.view.backgroundColor = color;
    
//    [self dismissViewControllerAnimated:YES completion:nil];

    //延迟3秒再退出当前界面
    [self performSelector:@selector(dismissViewControllerAnimated:completion:) withObject:@NO afterDelay:3];
    
}

#pragma mark -通知传值
-(void)Transfermethod3{
    // 取到通知中心
    NSNotificationCenter * nc = [NSNotificationCenter defaultCenter];
    //在这个位置，输入完毕，发送通知
    
    //第一种
    //创建一个通知的第一中方式
    //1 第一个参数，通知的名字，
    //    NSNotification *notify = [NSNotification notificationWithName:@"showText" object:_Filed.text];
    
    //2.第二种创建的方式
    //第一个参数：通知的名字
    //第二个参数：通知所携带的对象
    //第三个参数：通知所携带的信息
    //    NSNotification *notify = [NSNotification notificationWithName:@"showText" object:_textFiled userInfo:@{@"showText":_Filed.text}];
    //发送通知
    //    [nc postNotification:notify];
    
    
    //第二种发送方式，提供通知的名字和必要的内容，由通知中心创建通知并发送
    
    //第一个参数：通知的名字
    //第二参数：通知所携带的对象
    //    [nc postNotificationName:@"showText" object:_Filed.text];
    
    
    //第三种发送方式
    //提供通知的名字，携带的对象、携带的信息，通知中心来创建通知并发送
    
    [nc postNotificationName:@"showText" object:nil userInfo:@{@"showText":_Filed.text}];
    
    //退出当前界面
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

#pragma mark -单例传值
-(void)Transfermethod4{
    
    SingleTon *singel =[SingleTon GSsharesingeleTon];
    
    singel.ShowText = _Filed.text;
    
    //退出当前界面
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)Transfermethod5{
    
    
    
    
}

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
