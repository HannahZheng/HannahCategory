//
//  UITableViewHeaderFooterView+RoundCorner.h
//  GJmall
//
//  Created by MXTH on 2018/4/9.
//  Copyright © 2018年 Hannah. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,HHSecRoundCornerType)
{
    HHSecRoundCornerTypeTop,
    HHSecRoundCornerTypeBottom,
    HHSecRoundCornerTypeAll,
    HHSecRoundCornerTypeDefault
};

@interface UITableViewHeaderFooterView (RoundCorner)

- (void)setRoundedCornerWithType:(HHSecRoundCornerType)cornerType
                          radius:(CGFloat)radius
                          bounds:(CGRect)bounds
                           color:(UIColor *)layerColor
                     borderColor:(UIColor *)borderColor
                     borderWidth:(CGFloat)borderW
                     shadowColor:(UIColor *)shadowColor
                    shadowRadius:(CGFloat)shadowRadius
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity;

- (void)setMyOrderListWithBounds:(CGRect)bounds
                       leftWidth:(CGFloat)leftW
                       topHeight:(CGFloat)topH
                          radius:(CGFloat)radius
                           color:(UIColor *)layerColor
                     borderColor:(UIColor *)borderColor
                     borderWidth:(CGFloat)borderW
                     shadowColor:(UIColor *)shadowColor
                    shadowRadius:(CGFloat)shadowRadius
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity;

@end
