//
//  UILabel+GSLabel.m
//  ZGSTransfer-number
//
//  Created by Apple on 16/6/30.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import "UILabel+GSLabel.h"

@implementation UILabel (GSLabel)

-(void)GS_SetMyLabelWithTextName:(NSString *)name{
    
    self.backgroundColor = [UIColor lightGrayColor];
    
    self.textColor = [UIColor redColor];
    
    self.adjustsFontSizeToFitWidth = YES;
    
    self.text = name;
    
    self.font = [UIFont boldSystemFontOfSize:25];
    
    
    
    
}

@end
