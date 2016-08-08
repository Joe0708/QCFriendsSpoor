//
//  QCSpoorCell.m
//  微信朋友圈
//
//  Created by Joe-c on 16/8/7.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCSpoorCell.h"
#import "PureLayout.h"
#import "QCSpoorCommentView.h"
#import "QCSpoor.h"
#import "UIImageView+WebCache.h"
#import "QCSpoorPhotosView.h"
#import "QCConstant.h"
#import "UIImage+extension.h"
#import "UIImageView+WebImage.h"

@interface QCSpoorCell ()

@property(nonatomic,strong) UIImageView *imgView;
@property(nonatomic,strong) UILabel *nicknameLabel;
@property(nonatomic,strong) UILabel *timeLabel;
@property(nonatomic,strong) UILabel *contentLabel;

@property(nonatomic,strong) QCSpoorCommentView *spoorCommentView;
@property(nonatomic,strong) QCSpoorPhotosView *spoorPhotosView;

@property (nonatomic, strong) NSLayoutConstraint *photosViewHeightConstraint;

@end

@implementation QCSpoorCell

-(void)setFrame:(CGRect)frame{
    frame.size.height -= 10;
    [super setFrame:frame];
}

+ (instancetype)cellWithTableView:(UITableView *)tableView spoor:(QCSpoor *)spoor{
    QCSpoorCell *cell = [tableView dequeueReusableCellWithIdentifier:[QCSpoorCell description]];
    if (!cell) {
        cell = [[QCSpoorCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:[QCSpoorCell description]];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.spoor = spoor;
    
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.imgView = [UIImageView newAutoLayoutView];
        [self.contentView addSubview:self.imgView];
        
        self.nicknameLabel = [UILabel newAutoLayoutView];
        [self.contentView addSubview:self.nicknameLabel];
        
        self.timeLabel = [UILabel newAutoLayoutView];
        [self.contentView addSubview:self.timeLabel];
        
        self.contentLabel = [UILabel newAutoLayoutView];
        self.contentLabel.numberOfLines = 0;
        [self.contentView addSubview:self.contentLabel];
        
        self.spoorCommentView = [QCSpoorCommentView spoorCommentView];
        [self.contentView addSubview:self.spoorCommentView];
        
        self.spoorPhotosView = [QCSpoorPhotosView spoorPhotosView];
        [self.contentView addSubview:self.spoorPhotosView];
        
        [self.imgView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.contentView withOffset:15];
        [self.imgView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.contentView withOffset:10];
        [self.imgView autoSetDimensionsToSize:CGSizeMake(60, 60)];
        
        [self.nicknameLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.imgView withOffset:10];
        [self.nicknameLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.imgView];
        
        [self.timeLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.nicknameLabel];
        [self.timeLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.nicknameLabel withOffset:10];
        
        [self.contentLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.imgView];
        [self.contentLabel autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:15];
        [self.contentLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.imgView withOffset:10];
        
        [self.spoorPhotosView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.imgView];
        [self.spoorPhotosView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.contentLabel withOffset:10];
        [self.spoorPhotosView autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.contentView withOffset:-15];
        self.photosViewHeightConstraint = [self.spoorPhotosView autoSetDimension:ALDimensionHeight toSize:200];

        [self.spoorCommentView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
        [self.spoorCommentView autoPinEdgeToSuperviewEdge:ALEdgeRight];
        [self.spoorCommentView autoPinEdgeToSuperviewEdge:ALEdgeBottom];
        [self.spoorCommentView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.spoorPhotosView withOffset:10];
    }
    return self;
}

- (void)setSpoor:(QCSpoor *)spoor{
    _spoor = spoor;
    
    [self.imgView qc_avatarImageWithUrlString:spoor.iconUrl placeholderImageString:nil];
    self.nicknameLabel.text = spoor.nickname;
    self.timeLabel.text = spoor.time;
    self.contentLabel.text = spoor.content;

    NSUInteger imgCount = spoor.imgUrl.count > 9 ? 9 : spoor.imgUrl.count;
    
    for (UIImageView *imgV in self.spoorPhotosView.subviews) {
        [imgV setHidden:YES];
    }

    for (int i = 0; i < imgCount; i ++) {
        UIImageView *img = self.spoorPhotosView.subviews[i];
        if (i == 1 && imgCount == 4) {
            i ++;
        }
        [img setHidden:NO];
        [img qc_imageWithUrlString:spoor.imgUrl[i] placeholderImageString:nil];
    }
    
    //根据配置设置配图的高度
    NSUInteger row = (imgCount - 1) / 3 + 1;
    self.photosViewHeightConstraint.constant = kPhotoWH * row + (kRowAndColMargin * (row - 1));
}

@end
