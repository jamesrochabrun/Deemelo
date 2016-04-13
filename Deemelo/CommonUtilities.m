//
//  CommonUtilities.m
//  Deemelo
//
//  Created by Cesar Ortiz on 30-01-14.
//  Copyright (c) 2014 Acid. All rights reserved.
//

#import "CommonUtilities.h"

@implementation CommonUtilities

+ (UIImage *)imageFromColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
