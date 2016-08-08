//
//  QCSpoor.h
//  微信朋友圈
//
//  Created by Joe-c on 16/8/7.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QCSpoor : NSObject

@property(nonatomic,copy) NSString *iconUrl;
@property(nonatomic,copy) NSString *nickname;
@property(nonatomic,copy) NSString *time;
@property(nonatomic,copy) NSString *content;
@property(nonatomic,strong) NSArray *imgUrl;

@end
