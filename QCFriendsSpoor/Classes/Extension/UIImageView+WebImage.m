//
//  UIImageView+WebImage.m
//  微信朋友圈
//
//  Created by Joe on 16/8/8.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "UIImageView+WebImage.h"
#import "UIImageView+WebCache.h"

#import "UIImage+extension.h"

@implementation UIImageView (WebImage)


- (void)qc_imageWithUrlString:(NSString *)urlString placeholderImageString:(NSString *)placeholderImageString isAvatar:(BOOL)isAvater{
    [self sd_setImageWithURL:[NSURL URLWithString:urlString] placeholderImage:[UIImage imageNamed:placeholderImageString] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (isAvater) {
            self.image = [image imageWithSize:self.bounds.size radius:self.bounds.size.width * .5 backgroundColor:self.superview.backgroundColor];
        }else{
            self.image = [image imageWithSize:self.bounds.size radius:0 backgroundColor:self.superview.backgroundColor];
        }
    }];
}

- (void)qc_avatarImageWithUrlString:(NSString *)urlString placeholderImageString:(NSString *)placeholderImageString{
    [self qc_imageWithUrlString:urlString placeholderImageString:placeholderImageString isAvatar:YES];
}

- (void)qc_imageWithUrlString:(NSString *)urlString placeholderImageString:(NSString *)placeholderImageString{
    [self qc_imageWithUrlString:urlString placeholderImageString:placeholderImageString isAvatar:NO];
}


@end
