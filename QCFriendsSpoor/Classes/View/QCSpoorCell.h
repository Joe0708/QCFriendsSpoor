//
//  QCSpoorCell.h
//  微信朋友圈
//
//  Created by Joe-c on 16/8/7.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QCSpoor;
@interface QCSpoorCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView spoor:(QCSpoor *)spoor;
@property(nonatomic,strong) QCSpoor *spoor;

@end
