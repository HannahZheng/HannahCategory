//
//  UIColor+Hex.h
//  GlobalTimes
//
//  Created by apple on 2017/1/11.
//  Copyright © 2017年 Hannah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)color;

//从十六进制字符串获取颜色，
//color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

+(NSArray *)rgbColorsWithHexString:(NSString *)color;

+ (UIColor *)colorWithHexRGB:(NSString *)hexRGBString;

@end
