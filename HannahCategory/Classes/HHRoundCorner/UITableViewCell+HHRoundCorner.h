//
//  UITableViewCell+RoundCorner.h
//
//
//  Created by MXTH on 2018/1/20.
//  Copyright © 2018年 Hannah. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,HHRoundCornerType)
{
    HHRoundCornerTypeTop,
    HHRoundCornerTypeBottom,
    HHRoundCornerTypeAll,
    HHRoundCornerTypeDefault
};

@interface UITableViewCell (HHRoundCorner)

- (void)setRoundedCornerWithType:(HHRoundCornerType)cornerType radius:(CGFloat)radius
                          bounds:(CGRect)bounds
                           color:(UIColor *)layerColor
                     borderColor:(UIColor *)borderColor
                     borderWidth:(CGFloat)borderW
                     shadowColor:(UIColor *)shadowColor
                    shadowRadius:(CGFloat)shadowRadius
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity;

@end
