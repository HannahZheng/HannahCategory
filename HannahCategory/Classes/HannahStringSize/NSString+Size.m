//
//  NSString+Size.m
//  GlobalTimes
//
//  Created by apple on 16/8/9.
//  Copyright © 2016年 Hannah. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

+ (CGSize)sizeWithString:(NSString *)string boldFont:(CGFloat)font maxWidth:(CGFloat)maxWidth{
    
    UILabel *label = [UILabel new];
    label.text = string;
    label.font = [UIFont boldSystemFontOfSize:font];
    label.numberOfLines = 0;
     CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
    return [label sizeThatFits:maxSize];
    
//    NSDictionary *attributesDict = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:font]};
//
//    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
//
//    CGRect subviewRect = [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics attributes:attributesDict context:nil];
//
//    return subviewRect.size;
}

+ (CGSize)sizeWithString:(NSString *)string font:(CGFloat)font maxWidth:(CGFloat)maxWidth

{
    UILabel *label = [UILabel new];
    label.text = string;
    label.font = [UIFont systemFontOfSize:font];
    label.numberOfLines = 0;
    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
    return [label sizeThatFits:maxSize];
    
//    NSDictionary *attributesDict = @{NSFontAttributeName:[UIFont systemFontOfSize:font]};
//
//    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
//
//    CGRect subviewRect = [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics attributes:attributesDict context:nil];
//
//    return subviewRect.size;
    
}

+ (CGSize)sizeWithString:(NSString *)string font:(CGFloat)font maxWidth:(CGFloat)maxWidth lineSpace:(CGFloat)space{
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineSpacing = space;
    NSDictionary *attributesDict = @{NSFontAttributeName:[UIFont systemFontOfSize:font],NSParagraphStyleAttributeName:paraStyle};
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:string attributes:attributesDict];
    
    UILabel *label = [UILabel new];
    label.text = string;
    label.font = [UIFont systemFontOfSize:font];
    label.numberOfLines = 0;
    label.attributedText = attrStr;
    
    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
    return [label sizeThatFits:maxSize];
    
//    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
//
//    CGRect subviewRect = [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics attributes:attributesDict context:nil];
//
//    return subviewRect.size;

}

+ (CGSize)sizeWithString:(NSString *)string boldFont:(CGFloat)font maxWidth:(CGFloat)maxWidth lineSpace:(CGFloat)space{
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineSpacing = space;
    NSDictionary *attributesDict = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:font],NSParagraphStyleAttributeName:paraStyle};
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:string attributes:attributesDict];
    
    UILabel *label = [UILabel new];
    label.text = string;
    label.font = [UIFont boldSystemFontOfSize:font];
    label.numberOfLines = 0;
    label.attributedText = attrStr;
    
    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
    return [label sizeThatFits:maxSize];
    
//    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
//
//    CGRect subviewRect = [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics attributes:attributesDict context:nil];
//
//    return subviewRect.size;
}

/** 返回自适应宽度的文本 */
+ (CGSize)sizeWithString:(NSString *)string boldFont:(CGFloat)font maxHeight:(CGFloat)maxHeight{
    
    UILabel *label = [UILabel new];
    label.text = string;
    label.font = [UIFont boldSystemFontOfSize:font];
    label.numberOfLines = 0;
    
    CGSize maxSize = CGSizeMake(MAXFLOAT, maxHeight);
    return [label sizeThatFits:maxSize];
    
//    NSDictionary *attributesDict = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:font]};
//    CGRect subviewRect = [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics attributes:attributesDict context:nil];
//
//    return subviewRect.size;
}

+ (CGSize)sizeWithString:(NSString *)string font:(CGFloat)font maxHeight:(CGFloat)maxHeight

{
    
    UILabel *label = [UILabel new];
    label.text = string;
    label.font = [UIFont systemFontOfSize:font];
    label.numberOfLines = 0;
    
    CGSize maxSize = CGSizeMake(MAXFLOAT, maxHeight);
    return [label sizeThatFits:maxSize];
    
//    NSDictionary *attributesDict = @{NSFontAttributeName:[UIFont systemFontOfSize:font]};
//
//    CGSize maxSize = CGSizeMake(MAXFLOAT, maxHeight);
//
//    CGRect subviewRect = [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics attributes:attributesDict context:nil];
//
//    return subviewRect.size;
    
}

+ (CGSize)sizeWithString:(NSString *)string font:(CGFloat)font maxHeight:(CGFloat)maxHeight lineSpace:(CGFloat)space{
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineSpacing = space;
    NSDictionary *attributesDict = @{NSFontAttributeName:[UIFont systemFontOfSize:font],NSParagraphStyleAttributeName:paraStyle};
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:string attributes:attributesDict];
    
    UILabel *label = [UILabel new];
    label.text = string;
    label.font = [UIFont systemFontOfSize:font];
    label.numberOfLines = 0;
    label.attributedText = attrStr;
    
    CGSize maxSize = CGSizeMake(MAXFLOAT, maxHeight);
    return [label sizeThatFits:maxSize];
    
//    CGRect subviewRect = [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics attributes:attributesDict context:nil];
//
//    return subviewRect.size;
}

+ (CGSize)sizeWithString:(NSString *)string boldFont:(CGFloat)font maxHeight:(CGFloat)maxHeight lineSpace:(CGFloat)space{
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineSpacing = space;
    NSDictionary *attributesDict = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:font],NSParagraphStyleAttributeName:paraStyle};
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:string attributes:attributesDict];
    
    UILabel *label = [UILabel new];
    label.text = string;
    label.font = [UIFont boldSystemFontOfSize:font];
    label.numberOfLines = 0;
    label.attributedText = attrStr;
    
    CGSize maxSize = CGSizeMake(MAXFLOAT, maxHeight);
    return [label sizeThatFits:maxSize];
    
//    CGRect subviewRect = [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics attributes:attributesDict context:nil];
//
//    return subviewRect.size;
}

//获取这个字符串中的所有xxx的所在的index

+ (NSMutableArray *)getRangeStr:(NSString *)text findText:(NSString *)findText

{
    
    NSMutableArray *arrayRanges = [NSMutableArray arrayWithCapacity:20];
    
    if (findText == nil || [findText isEqualToString:@""]) {
        
        return nil;
        
    }
    
    NSRange rang = [text rangeOfString:findText]; //获取第一次出现的range
    
    if (rang.location != NSNotFound && rang.length != 0) {
        
        [arrayRanges addObject:[NSNumber numberWithInteger:rang.location]];//将第一次的加入到数组中
        
        NSRange rang1 = {0,0};
        
        NSInteger location = 0;
        
        NSInteger length = 0;
        
        for (int i = 0;; i++)
            
        {
            
            if (0 == i) {//去掉这个xxx
                
                location = rang.location + rang.length;
                
                length = text.length - rang.location - rang.length;
                
                rang1 = NSMakeRange(location, length);
                
            }else
                
            {
                
                location = rang1.location + rang1.length;
                
                length = text.length - rang1.location - rang1.length;
                
                rang1 = NSMakeRange(location, length);
                
            }
            
            //在一个range范围内查找另一个字符串的range
            
            rang1 = [text rangeOfString:findText options:NSCaseInsensitiveSearch range:rang1];
            
            if (rang1.location == NSNotFound && rang1.length == 0) {
                
                break;
                
            }else//添加符合条件的location进数组
                
                [arrayRanges addObject:[NSNumber numberWithInteger:rang1.location]];
            
        }
        
        return arrayRanges;
        
    }
    
    return nil;
    
}
@end
