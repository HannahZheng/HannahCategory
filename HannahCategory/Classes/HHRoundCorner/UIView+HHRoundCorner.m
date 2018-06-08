//
//  UIView+RoundCorner.m
//  GJmall
//
//  Created by MXTH on 2018/4/19.
//  Copyright © 2018年 Hannah. All rights reserved.
//

#import "UIView+HHRoundCorner.h"

@implementation UIView (HHRoundCorner)

- (void)setRoundedCornerWithType:(HHViewRoundCornerType)cornerType radius:(CGFloat)radius
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
            case HHViewRoundCornerTypeTop:
            {
                CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
                CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds), CGRectGetMidX(bounds), CGRectGetMinY(bounds), radius);
                CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), radius);
                CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
            }
                break;
                
                
            case HHViewRoundCornerTypeBottom:
            {
                CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
                CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMidX(bounds), CGRectGetMaxY(bounds), radius);
                CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), radius);
                CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
            }
                break;
                
                
            case HHViewRoundCornerTypeAll:
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
     
        
       [self.layer insertSublayer:layer atIndex:0];
    }
}

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
                   shadowOpacity:(CGFloat)shadowOpacity{
    if ([self respondsToSelector:@selector(tintColor)]) {
        
        self.backgroundColor = UIColor.clearColor;
        
        CGMutablePathRef pathRef = CGPathCreateMutable();
        
        CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds)-radius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds), CGRectGetMidX(bounds), CGRectGetMinY(bounds), radius);
        
        CGPathAddArcToPoint(pathRef, nil, leftW, CGRectGetMinY(bounds), leftW, CGRectGetMinY(bounds)+topH/2.0, radius);
        CGPathAddLineToPoint(pathRef, nil, leftW, topH);
        
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), topH, CGRectGetMaxX(bounds), topH+( CGRectGetMaxY(bounds)-topH)/2.0, radius);

         CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMidX(bounds), CGRectGetMaxY(bounds), radius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMinX(bounds), CGRectGetMidY(bounds), radius);
       

        
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
        
         [self.layer insertSublayer:layer atIndex:0];
    }
}


- (void)maskCornerWithType:(HHViewRoundCornerType)type radius:(CGFloat)radius{
    if (@available(iOS 11.0, *)) {
        CACornerMask mask;
        
        switch (type) {
            case HHViewRoundCornerTypeTop:
                {
                    mask = kCALayerMinXMinYCorner|kCALayerMaxXMinYCorner;
                }
                break;
                
            case HHViewRoundCornerTypeBottom:
            {
                mask = kCALayerMinXMaxYCorner|kCALayerMaxXMaxYCorner;
            }
                break;
                
            case HHViewRoundCornerTypeAll:
            {
                mask = kCALayerMinXMinYCorner|kCALayerMaxXMinYCorner|kCALayerMinXMaxYCorner|kCALayerMaxXMaxYCorner;
            }
                break;
                
            default:mask=0;
                break;
        }
        
        
        self.layer.maskedCorners = mask;
        self.layer.cornerRadius = radius;
//        self.layer.masksToBounds = YES;
      
    }else{
        
        
        UIRectCorner mask;

        switch (type) {
            case HHViewRoundCornerTypeTop:
            {
                mask = UIRectCornerTopLeft|UIRectCornerTopRight;
            }
                break;

            case HHViewRoundCornerTypeBottom:
            {
                mask = UIRectCornerBottomLeft|UIRectCornerBottomRight;
            }
                break;

            case HHViewRoundCornerTypeAll:
            {
                mask = UIRectCornerAllCorners;
            }
                break;

            default:mask = 0;
                break;
        }

        if (mask == 0) {
              self.layer.mask = nil;
        }else{
            UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:mask cornerRadii:CGSizeMake(radius, radius)];
            CAShapeLayer *maskLayer = [CAShapeLayer new];
            maskLayer.frame = self.bounds;
            maskLayer.path = maskPath.CGPath;

//            maskLayer.masksToBounds = YES;
            self.layer.mask = maskLayer;
//            [self.layer insertSublayer:maskLayer atIndex:0];
        }
//
       
    }
    
}

- (void)maskSingleCornerWithType:(HHSingleRoundCornerType)type radius:(CGFloat)radius{
    
    
    if (@available(iOS 11.0, *)) {
         CACornerMask rectMask;
        switch (type) {
            case HHSingleRoundCornerTypeTopLeft:
            {
                rectMask = kCALayerMinXMinYCorner;
            }
                break;
                
            case HHSingleRoundCornerTypeTopRight:
            {
                rectMask = kCALayerMaxXMinYCorner;
            }
                break;
                
                
            case HHSingleRoundCornerTypeBottomLeft:
            {
                rectMask = kCALayerMinXMaxYCorner;
            }
                break;
                
                
            case HHSingleRoundCornerTypeBottomRight:
            {
                rectMask = kCALayerMaxXMaxYCorner;
            }
                break;
                
            case HHSingleRoundCornerTypeTop:
            {
                rectMask = kCALayerMinXMinYCorner|kCALayerMaxXMinYCorner;
            }
                break;
                
                
            case HHSingleRoundCornerTypeBottom:
            {
                rectMask = kCALayerMinXMaxYCorner|kCALayerMaxXMaxYCorner;
            }
                break;
                
                
            case HHSingleRoundCornerTypeAll:
            {
                rectMask =  kCALayerMinXMinYCorner|kCALayerMaxXMinYCorner|kCALayerMinXMaxYCorner|kCALayerMaxXMaxYCorner;
            }
                break;
                
            default:{
                rectMask = 0;
            }
                break;
        }
        if (rectMask == 0) {
            self.layer.maskedCorners = rectMask;
            self.layer.cornerRadius = 0;
            self.layer.masksToBounds = YES;
        }else{
            self.layer.maskedCorners = rectMask;
            self.layer.cornerRadius = radius;
            self.layer.masksToBounds = YES;
        }
       
        return;
    }
    
    
     UIRectCorner rectCorner;
    switch (type) {
        case HHSingleRoundCornerTypeTopLeft:
        {
            rectCorner = UIRectCornerTopLeft;
        }
            break;
            
        case HHSingleRoundCornerTypeTopRight:
        {
            rectCorner = UIRectCornerTopRight;
        }
            break;
            
            
        case HHSingleRoundCornerTypeBottomLeft:
        {
            rectCorner = UIRectCornerBottomLeft;
        }
            break;
            
            
        case HHSingleRoundCornerTypeBottomRight:
        {
            rectCorner = UIRectCornerBottomRight;
        }
            break;
            
        case HHSingleRoundCornerTypeTop:
        {
            rectCorner = UIRectCornerTopLeft|UIRectCornerTopRight;
        }
            break;
            
            
        case HHSingleRoundCornerTypeBottom:
        {
            rectCorner = UIRectCornerBottomLeft|UIRectCornerBottomRight;
        }
            break;
            
            
        case HHSingleRoundCornerTypeAll:
        {
            rectCorner = UIRectCornerAllCorners;
        }
            break;
            
        default:{
            rectCorner = 0;
        }
            break;
            
           
    }
    
    if (rectCorner == 0) {
        self.layer.mask = nil;
    }else{
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(radius, radius)];
        CAShapeLayer *maskLayer = [CAShapeLayer new];
        maskLayer.frame = self.bounds;
        maskLayer.path = maskPath.CGPath;
        maskLayer.masksToBounds = YES;
        self.layer.mask = maskLayer;
    }
    
}

@end
