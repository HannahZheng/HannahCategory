//
//  NSString+Size.h
//  GlobalTimes
//
//  Created by apple on 16/8/9.
//  Copyright © 2016年 Hannah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Size)

/** 返回自适应高度的文本 */
+ (CGSize)sizeWithString:(NSString *)string boldFont:(CGFloat)font maxWidth:(CGFloat)maxWidth;

+ (CGSize)sizeWithString:(NSString *)string font:(CGFloat)font maxWidth:(CGFloat)maxWidth;

+ (CGSize)sizeWithString:(NSString *)string font:(CGFloat)font maxWidth:(CGFloat)maxWidth lineSpace:(CGFloat)space;

+ (CGSize)sizeWithString:(NSString *)string boldFont:(CGFloat)font maxWidth:(CGFloat)maxWidth lineSpace:(CGFloat)space;

/** 返回自适应宽度的文本 */

+ (CGSize)sizeWithString:(NSString *)string boldFont:(CGFloat)font maxHeight:(CGFloat)maxHeight;
+ (CGSize)sizeWithString:(NSString *)string font:(CGFloat)font maxHeight:(CGFloat)maxHeight;
+ (CGSize)sizeWithString:(NSString *)string font:(CGFloat)font maxHeight:(CGFloat)maxHeight lineSpace:(CGFloat)space;
+ (CGSize)sizeWithString:(NSString *)string boldFont:(CGFloat)font maxHeight:(CGFloat)maxHeight lineSpace:(CGFloat)space;
/**
 获取相同的字符出现的位置
 */
+ (NSMutableArray *)getRangeStr:(NSString *)text findText:(NSString *)findText;

@end
