//
//  UITextField+GSTextFiled.m
//  ZGSTransfer-number
//
//  Created by Apple on 16/6/30.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import "UITextField+GSTextFiled.h"

@implementation UITextField (GSTextFiled)

-(void)GS_SetMyTextFiledWithPlaceholder:(NSString *)name{
    
    self.borderStyle =UITextBorderStyleRoundedRect;
    
    self.adjustsFontSizeToFitWidth = YES;
    
    self.minimumFontSize  = 15;
    
    self.font = [UIFont boldSystemFontOfSize:25];
    
    self.placeholder = name;
    
    
}
@end
