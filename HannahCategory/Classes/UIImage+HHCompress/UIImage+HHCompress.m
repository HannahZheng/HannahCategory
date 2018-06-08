//
//  UIImage+Compress.m
//  GlobalTimes
//
//  Created by apple on 16/7/25.
//  Copyright © 2016年 Hannah. All rights reserved.
//

#import "UIImage+HHCompress.h"

@implementation UIImage (HHCompress)

+ (UIImage *)handleImageWithURLStr:(NSString *)imageURLStr{
    
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageURLStr]];
    return [self handleImageCompressWithImageData:imageData];
}

+ (UIImage *)handleImageCompressWithImageData:(NSData *)imageData{
    NSData *newImageData = imageData;
    // 压缩图片data大小
    newImageData = UIImageJPEGRepresentation([UIImage imageWithData:newImageData scale:0.1], 0.1f);
    UIImage *image = [UIImage imageWithData:newImageData];
    
    // 压缩图片分辨率(因为data压缩到一定程度后，如果图片分辨率不缩小的话还是不行)
    CGSize newSize = CGSizeMake(200, 200);
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;

}

- (UIImage*)imageCompressedByScalingNotCropping{
    
    CGFloat targetWidth = 200;//200
    CGFloat wxScale = (CGFloat)(self.size.width/targetWidth);
    CGFloat targetHeight = self.size.height/wxScale;
    
    UIGraphicsBeginImageContext(CGSizeMake(targetWidth, targetHeight));
    [self drawInRect:CGRectMake(0, 0, targetWidth, targetHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    NSUInteger oldLength = UIImageJPEGRepresentation(newImage,1).length;
    NSUInteger newLength = 1024 *32;//1024 *32
    if (oldLength > newLength) {
        CGFloat compress = (CGFloat) newLength/oldLength;
        NSString *str = [NSString stringWithFormat:@"%.1f",compress];
        NSData *targetData = UIImageJPEGRepresentation(newImage, [str floatValue]);
        UIImage *targetImage = [UIImage imageWithData:targetData];
        
        return targetImage;
    }
    
    
    return newImage;
}

- (UIImage*)imageCompressedByScalingNotCroppingWithLength:(int)compressLength{
    //先对图片的宽度和高度进行判断
    UIImage *targetImg = [self imageByScalingAndCroppingWithSize:self.size];
    CGFloat  targetWidth = targetImg.size.width;
    CGFloat wxScale = ceilf(self.size.width/targetWidth);
    CGFloat targetHeight = targetImg.size.height/wxScale;
    
    UIGraphicsBeginImageContext(CGSizeMake(targetWidth, targetHeight));
    [self drawInRect:CGRectMake(0, 0, targetWidth, targetHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    NSUInteger oldLength = UIImageJPEGRepresentation(newImage,1).length;
    NSUInteger newLength = compressLength;//1024 *32
    if (oldLength > newLength) {
        CGFloat compress = (CGFloat) newLength/oldLength;
        NSString *str = [NSString stringWithFormat:@"%.1f",compress];
        
        NSData *targetData = UIImageJPEGRepresentation(newImage, [str floatValue]);
        UIImage *targetImage = [UIImage imageWithData:targetData];
        
        return targetImage;
    }
   
    return newImage;

}

//压缩图片至100k以下
- (NSData *)getImageDataWithCompress
{
    NSData *data=UIImageJPEGRepresentation(self, 1.0);
    NSLog(@"上传时图片的大小   %luK",data.length/1024);
    
    if (data.length > 10*1024*1024) {//大于10M
        data = UIImageJPEGRepresentation(self, 0.01);
    }else if (data.length <= 10*1024*1024 &&data.length > 1024*1024){//1M~10M
        data=UIImageJPEGRepresentation(self, 0.1);
        //            UIImage *newImg = [self imageCompressedByScalingNotCroppingWithLength:300*1024];
        //            data = UIImageJPEGRepresentation(newImg, 1);
    }else if ( data.length <= 1024*1024 && data.length>512*1024) {//0.5M-1M
        data=UIImageJPEGRepresentation(self, 0.3);
    }else if (data.length <= 512*1024 && data.length>200*1024) {//200K - 0.5M
        data=UIImageJPEGRepresentation(self, 0.5);
    }else if (data.length <= 200*1024 && data.length > 100*1024){
        data = UIImageJPEGRepresentation(self, 0.7);
    }

    NSLog(@"压缩后  图片的大小   %luK",data.length/1024);
    return data;
}


- (UIImage *)imageByScalingAndCroppingWithSize:(CGSize)targetSize {
    UIImage *newImage = nil;
    CGSize imageSize = self.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    if (CGSizeEqualToSize(imageSize, targetSize) == NO)
    {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        
        if (widthFactor > heightFactor)
            scaleFactor = widthFactor; // scale to fit height
        else
            scaleFactor = heightFactor; // scale to fit width
        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        
        // center the image
        if (widthFactor > heightFactor)
        {
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        }
        else
            if (widthFactor < heightFactor)
            {
                thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
            }
    }
    UIGraphicsBeginImageContext(targetSize); // this will crop
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    
    [self drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    if(newImage == nil) NSLog(@"could not scale image");
    //pop the context to get back to the default
    UIGraphicsEndImageContext();
    return newImage;
}

@end
