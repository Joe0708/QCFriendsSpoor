//
//  QCFriendsTableViewController.m
//  微信朋友圈
//
//  Created by Joe-c on 16/8/7.
//  Copyright © 2016年 Joe-c. All rights reserved.
//

#import "QCSpoorTableViewController.h"
#import "QCSpoorCell.h"
#import "QCSpoor.h"
@interface QCSpoorTableViewController ()

@property(nonatomic,strong) NSArray *spoorList;


@end

@implementation QCSpoorTableViewController

- (NSArray *)spoorList{
    if (!_spoorList) {
        
        QCSpoor *spoor1 = [QCSpoor new];
        spoor1.iconUrl = @"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=306547450,2932158275&fm=58";
        spoor1.nickname = @"百度翻译";
        spoor1.time = @"2016年08月07日22:25:37";
        spoor1.content = @"可以笑的话,不会哭,可找到知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福";
        spoor1.imgUrl = @[
                          @"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=306547450,2932158275&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          ];
        
        QCSpoor *spoor2 = [QCSpoor new];
        spoor2.iconUrl = @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58";
        spoor2.nickname = @"fanny";
        spoor2.time = @"2016年08月07日22:25:37";
        spoor2.content = @"可以笑的话,不会哭,可找到知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福";
        spoor2.imgUrl = @[
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58"
                          ];
        
        QCSpoor *spoor3 = [QCSpoor new];
        spoor3.iconUrl = @"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=150566031,731621828&fm=58";
        spoor3.nickname = @"百度网盘";
        spoor3.time = @"2016年08月07日22:25:37";
        spoor3.content = @"可以笑的话,不会哭,可找到知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福";
        spoor3.imgUrl = @[
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58"
                          ];
        
        QCSpoor *spoor4 = [QCSpoor new];
        spoor4.iconUrl = @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1209509894,2219560001&fm=58";
        spoor4.nickname = @"Google";
        spoor4.time = @"2016年08月07日22:25:37";
        spoor4.content = @"可以笑的话,不会哭,可找到知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福";
        spoor4.imgUrl = @[
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58"
                          ,@"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58"
                          ];
        
        QCSpoor *spoor5 = [QCSpoor new];
        spoor5.iconUrl = @"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=387953439,1955200112&fm=58";
        spoor5.nickname = @"Xcode";
        spoor5.time = @"2016年08月07日22:25:37";
        spoor5.content = @"可以笑的话,不会哭,可找到知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福知己哪会孤独偏偏我永没有遇上问我一身足印的风霜怎可结束可以爱的话不退缩可相知的心哪怕追逐可惜每次遇上热爱,无法使我感觉我终于遇上幸福";
        spoor5.imgUrl = @[
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1780499918,2213148851&fm=58",
                          ];
        _spoorList = @[spoor1, spoor2, spoor3, spoor4, spoor5];
    }
    return _spoorList;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.estimatedRowHeight = 200;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.backgroundColor = [UIColor colorWithRed:0.275 green:0.424 blue:0.447 alpha:1];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.spoorList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [QCSpoorCell cellWithTableView:tableView spoor:self.spoorList[indexPath.row]];
}

@end
