//
//  IDCardNumberRegexTool.h
//  IDCardNumberRegexTool
//
//  Created by JYH on 2017/9/8.
//  Copyright © 2017年 FRAJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDCardNumberRegexTool : NSObject

+ (BOOL)accurateVerifyIDCardNumber:(NSString *)value;

@end
