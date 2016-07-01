//
//  SingleTon.h
//  ZGSTransfer-number
//
//  Created by Apple on 16/7/1.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingleTon : NSObject
@property(nonatomic,copy)NSString *ShowText;

+(SingleTon*)GSsharesingeleTon;
@end
