//
//  UIView+LineDash.h
//  GJmall
//
//  Created by MXTH on 2018/4/3.
//  Copyright © 2018年 Hannah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HHLineDash)

- (void)lineDashWithColor:(UIColor *)lineColor
                    width:(CGFloat)lineWidth
           leftRightSpace:(CGFloat)space
              topOrBottom:(BOOL)bottom
                 startNum:(CGFloat)startNum
                  thenNum:(CGFloat)thenNum
             arrangeCount:(NSInteger)arrangeCount;

- (void)lineDashWithColor:(UIColor *)lineColor
                    width:(CGFloat)lineWidth
               startPoint:(CGPoint)startPoint
                 endPoint:(CGPoint)endPoint
                 startNum:(CGFloat)startNum
                  thenNum:(CGFloat)thenNum
             arrangeCount:(NSInteger)arrangeCount;

- (void)lineDashWithColor:(UIColor *)lineColor
                    width:(CGFloat)lineWidth
               startPoint:(CGPoint)startPoint
                 endPoint:(CGPoint)endPoint
                   numArr:(CGFloat[])arr
             arrangeCount:(NSInteger)arrangeCount;

@end
