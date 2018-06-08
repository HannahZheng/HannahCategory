//
//  UIImage+Compress.h
//  GlobalTimes
//
//  Created by apple on 16/7/25.
//  Copyright © 2016年 Hannah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (HHCompress)

+ (UIImage *)handleImageWithURLStr:(NSString *)imageURLStr;
+ (UIImage *)handleImageCompressWithImageData:(NSData *)imageData;

- (UIImage*)imageCompressedByScalingNotCropping;

//压缩图片至100k以下,上传阿里云时
-(NSData *)getImageDataWithCompress;

//按照图片原本的尺寸进行压缩
- (UIImage*)imageCompressedByScalingNotCroppingWithLength:(int)compressLength;

- (UIImage *)imageByScalingAndCroppingWithSize:(CGSize)targetSize;
@end
