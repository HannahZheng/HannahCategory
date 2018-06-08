//
//  UIView+LineDash.m
//  GJmall
//
//  Created by MXTH on 2018/4/3.
//  Copyright © 2018年 Hannah. All rights reserved.
//

#import "UIView+HHLineDash.h"

@implementation UIView (HHLineDash)

- (void)lineDashWithColor:(UIColor *)lineColor
                    width:(CGFloat)lineWidth
           leftRightSpace:(CGFloat)space
              topOrBottom:(BOOL)bottom
                 startNum:(CGFloat)startNum
                  thenNum:(CGFloat)thenNum
             arrangeCount:(NSInteger)arrangeCount{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [lineColor CGColor]);
    CGContextSetLineWidth(context, lineWidth);
    CGFloat arr[] = {startNum, thenNum};
    CGContextSetLineDash(context, 0, arr, arrangeCount);
    
    if (bottom) {
        CGContextMoveToPoint(context, space, self.frame.size.height - lineWidth);
        CGContextAddLineToPoint(context, self.frame.size.width-space, self.frame.size.height - lineWidth);
    }else{
        CGContextMoveToPoint(context, space, 0);
        CGContextAddLineToPoint(context, self.frame.size.width-space, 0);
    }
    
//  等同于  CGContextDrawPath(context, kCGPathStroke);
    CGContextStrokePath(context);
    // 关闭图像
//    CGContextClosePath(context);
}

- (void)lineDashWithColor:(UIColor *)lineColor
                    width:(CGFloat)lineWidth
               startPoint:(CGPoint)startPoint
                 endPoint:(CGPoint)endPoint
                 startNum:(CGFloat)startNum
                  thenNum:(CGFloat)thenNum
             arrangeCount:(NSInteger)arrangeCount{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [lineColor CGColor]);
    CGContextSetLineWidth(context, lineWidth);
    CGFloat arr[] = {startNum, thenNum};
    CGContextSetLineDash(context, 0, arr, arrangeCount);
    
    CGContextMoveToPoint(context, startPoint.x, startPoint.y);
    CGContextAddLineToPoint(context, endPoint.x, endPoint.y);
    
    //  等同于  CGContextDrawPath(context, kCGPathStroke);
    CGContextStrokePath(context);
    // 关闭图像
//    CGContextClosePath(context);
}

- (void)lineDashWithColor:(UIColor *)lineColor
                    width:(CGFloat)lineWidth
               startPoint:(CGPoint)startPoint
                 endPoint:(CGPoint)endPoint
                   numArr:(CGFloat[])arr
             arrangeCount:(NSInteger)arrangeCount{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [lineColor CGColor]);
    CGContextSetLineWidth(context, lineWidth);
    
    CGContextSetLineDash(context, 0, arr, arrangeCount);
    
    CGContextMoveToPoint(context, startPoint.x, startPoint.y);
    CGContextAddLineToPoint(context, endPoint.x, endPoint.y);
    
    //  等同于  CGContextDrawPath(context, kCGPathStroke);
    CGContextStrokePath(context);
    // 关闭图像
//    CGContextClosePath(context);
}

@end
