//
//  SingleTon.m
//  ZGSTransfer-number
//
//  Created by Apple on 16/7/1.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import "SingleTon.h"

@implementation SingleTon

+(SingleTon*)GSsharesingeleTon{
    
    static SingleTon *singele = nil;
    
    static dispatch_once_t tonken;
    
    dispatch_once(&tonken, ^{
        
        singele = [[SingleTon alloc]init];
    });
    
    return singele;
    
}

@end
