//
//  UITableViewCell+RoundCorner.m
//  
//
//  Created by MXTH on 2018/1/20.
//  Copyright © 2018年 Hannah. All rights reserved.
//

#import "UITableViewCell+RoundCorner.h"

@implementation UITableViewCell (RoundCorner)

- (void)setRoundedCornerWithType:(HHRoundCornerType)cornerType radius:(CGFloat)radius
                          bounds:(CGRect)bounds
                           color:(UIColor *)layerColor
                     borderColor:(UIColor *)borderColor
                     borderWidth:(CGFloat)borderW
                     shadowColor:(UIColor *)shadowColor
                    shadowRadius:(CGFloat)shadowRadius
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity{
    
    if ([self respondsToSelector:@selector(tintColor)]) {
        
        self.backgroundColor = UIColor.clearColor;
        
        
        CGMutablePathRef pathRef = CGPathCreateMutable();
        
        switch (cornerType) {
            case HHRoundCornerTypeTop:
            {
                CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
                CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds), CGRectGetMidX(bounds), CGRectGetMinY(bounds), radius);
                CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), radius);
                CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
            }
                break;
                
                
            case HHRoundCornerTypeBottom:
            {
                CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
                CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMidX(bounds), CGRectGetMaxY(bounds), radius);
                CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), radius);
                CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
            }
                break;
                
                
            case HHRoundCornerTypeAll:
            {
                CGPathAddRoundedRect(pathRef, nil, bounds, radius, radius);
          
            }
                break;
                
                
            default:
            {
                CGPathAddRect(pathRef, nil, bounds);
                
//                CGPathMoveToPoint(pathRef, nil, bounds.origin.x + 10, bounds.origin.y);
//                CGPathAddLineToPoint(pathRef, nil, bounds.origin.x + 10, bounds.size.height);
//                //右边线
//                CGPathMoveToPoint(pathRef, nil, bounds.origin.x + bounds.size.width - 10, bounds.origin.y);
//                CGPathAddLineToPoint(pathRef, nil, bounds.origin.x + bounds.size.width - 10, bounds.size.height);
                
             
            }
                break;
        }
        
        CAShapeLayer *layer = [[CAShapeLayer alloc] init];
        layer.path = pathRef;
        if (borderColor) {
            layer.borderColor = [borderColor CGColor];
            layer.strokeColor = [borderColor CGColor];
        }
        layer.borderWidth = borderW;
        layer.lineWidth = borderW;
        CFRelease(pathRef);
        layer.fillColor = [layerColor CGColor];
        
        if (shadowColor) {
            layer.shadowColor = [shadowColor CGColor];
            layer.shadowOffset = shadowOffset;
            layer.shadowRadius = shadowRadius;
            layer.shadowOpacity = shadowOpacity;
        }
        
//        layer.masksToBounds = YES;
    
        UIView *testView = [[UIView alloc] initWithFrame:bounds];
        [testView.layer insertSublayer:layer atIndex:0];
        testView.backgroundColor = UIColor.clearColor;
       
        self.backgroundView = testView;
        
//        CAShapeLayer *backgroundLayer = [[CAShapeLayer alloc] init]; //显示选中
//        UIView *selectedBackgroundView = [[UIView alloc] initWithFrame:bounds];
//        UITableView *table = (UITableView *) self.superview;
//        
//        backgroundLayer.fillColor = table.separatorColor.CGColor;
//        [selectedBackgroundView.layer insertSublayer:backgroundLayer atIndex:0];
//        selectedBackgroundView.backgroundColor = UIColor.clearColor;
//      self.selectedBackgroundView = selectedBackgroundView;
    }
}

@end
