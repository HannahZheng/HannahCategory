//
//  UIView+RoundCorner.h
//  GJmall
//
//  Created by MXTH on 2018/4/19.
//  Copyright © 2018年 Hannah. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,HHViewRoundCornerType)
{
    HHViewRoundCornerTypeTop,
    HHViewRoundCornerTypeBottom,
    HHViewRoundCornerTypeAll,
    HHViewRoundCornerTypeDefault
};

typedef enum : NSUInteger {
    HHSingleRoundCornerTypeTopLeft,
    HHSingleRoundCornerTypeTopRight,
    HHSingleRoundCornerTypeBottomLeft,
    HHSingleRoundCornerTypeBottomRight,
    HHSingleRoundCornerTypeTop,
    HHSingleRoundCornerTypeBottom,
    HHSingleRoundCornerTypeAll,
    HHSingleRoundCornerTypeNone,
    
} HHSingleRoundCornerType;


@interface UIView (RoundCorner)

- (void)setRoundedCornerWithType:(HHViewRoundCornerType)cornerType radius:(CGFloat)radius
                          bounds:(CGRect)bounds
                           color:(UIColor *)layerColor
                     borderColor:(UIColor *)borderColor
                     borderWidth:(CGFloat)borderW
                     shadowColor:(UIColor *)shadowColor
                    shadowRadius:(CGFloat)shadowRadius
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity;

- (void)setMySpecialShapeWithBounds:(CGRect)bounds
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


- (void)maskCornerWithType:(HHViewRoundCornerType)type radius:(CGFloat)radius;

- (void)maskSingleCornerWithType:(HHSingleRoundCornerType)type radius:(CGFloat)radius;

@end
