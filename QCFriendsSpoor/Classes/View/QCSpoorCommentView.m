//
//  QCSpoorCommentView.m
//  微信朋友圈
//
//  Created by Joe-c on 16/8/7.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCSpoorCommentView.h"
#import "PureLayout.h"

@interface QCSpoorCommentView ()

@property(nonatomic,strong) UIButton *collectBtn;
@property(nonatomic,strong) UIButton *commentBtn;

@end

@implementation QCSpoorCommentView


+ (instancetype)spoorCommentView{
    return [[self alloc] init];
}

- (instancetype)init{
    if (self = [super init]) {
        self.collectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.collectBtn setTitle:@"收藏" forState:UIControlStateNormal];
        [self.collectBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.collectBtn.backgroundColor = [UIColor colorWithRed:0.890 green:0.890 blue:0.890 alpha:1];
        [self addSubview:self.collectBtn];
        
        self.commentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.commentBtn setTitle:@"评论" forState:UIControlStateNormal];
        [self.commentBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.commentBtn.backgroundColor = [UIColor colorWithRed:0.890 green:0.890 blue:0.890 alpha:1];
        [self addSubview:self.commentBtn];
        
        CGFloat w = [[UIScreen mainScreen] bounds].size.width * .5;
        
        [ @[self.collectBtn, self.commentBtn] autoSetViewsDimension:ALDimensionWidth toSize:w];
        
        [self.collectBtn autoPinEdgeToSuperviewEdge:ALEdgeLeft];
        [self.collectBtn autoPinEdgeToSuperviewEdge:ALEdgeBottom];
        [self.collectBtn autoPinEdgeToSuperviewEdge:ALEdgeTop];
        
        [self.commentBtn autoPinEdgeToSuperviewEdge:ALEdgeRight];
        [self.commentBtn autoPinEdgeToSuperviewEdge:ALEdgeBottom];
        [self.commentBtn autoPinEdgeToSuperviewEdge:ALEdgeTop];
        
    }
    return self;
}

@end
