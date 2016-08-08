//
//  QCSpoorPhotosView.m
//  微信朋友圈
//
//  Created by Joe-c on 16/8/7.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCSpoorPhotosView.h"
#import "QCConstant.h"
#import "UIImageView+WebCache.h"

@implementation QCSpoorPhotosView

+ (instancetype)spoorPhotosView{
    return [[self alloc] init];
}


- (instancetype)init{
    if (self = [super init]) {
        self.clipsToBounds = YES;
        
        CGFloat w = (kScreenWidth - 30 - (kRowAndColMargin * 2)) / 3;
        NSUInteger count = 3;
        for (int i = 0; i < count *count; i ++) {
            UIImageView *imgV = [UIImageView new];
            CGFloat row = i / count;
            CGFloat col = i % count;
            
            CGFloat x = (kRowAndColMargin + w) * col;
            CGFloat y = (kRowAndColMargin + w) * row;
            
            imgV.frame = CGRectMake(x, y, w, w);
            
            imgV.hidden = YES;
            [self addSubview:imgV];
        }
    }
    return self;
}

@end
