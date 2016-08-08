//
//  UIImageView+WebImage.h
//  微信朋友圈
//
//  Created by Joe on 16/8/8.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (WebImage)

- (void)qc_avatarImageWithUrlString:(NSString *)urlString placeholderImageString:(NSString *)placeholderImageString;

- (void)qc_imageWithUrlString:(NSString *)urlString placeholderImageString:(NSString *)placeholderImageString;

@end
