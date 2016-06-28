//
//  MainTableViewController.m
//  自适应cell
//
//  Created by 法大大 on 16/6/28.
//  Copyright © 2016年 liuyugui. All rights reserved.
//

#import "MainTableViewController.h"
#import "PhotoTableViewCell.h"
#import "MessageTableViewCell.h"

#import <UITableView+FDTemplateLayoutCell.h>

@interface MainTableViewController ()

/**
 描述：数据源
 */
@property(nonatomic,strong)NSArray * dataArray;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary * dict1 = [[NSMutableDictionary alloc]init];
    [dict1 setObject:@"美化控的福音 安卓图标包推荐" forKey:@"title"];
    [dict1 setObject:@"对于不喜欢各大厂商定制的启动器的用户来说，第三方启动器如Nova、Apex等应该并不陌生，这种第三方类原生启动器往往可以实现很多自定义功能，美化图标便是其中一项。很多国产应用，如淘宝、京东、支付宝等，每到618或双11时，图标变会变为带有促销信息字样的版本，十分的不美观，这个时候第三方启动器可以更换图标的优势便体现出来了，今天我们就来看看有哪些优秀的图标包推荐。" forKey:@"content"];
    [dict1 setObject:@[
                       [UIImage imageNamed:@"1"],
                       [UIImage imageNamed:@"2"],
                       [UIImage imageNamed:@"3"]
                       ] forKey:@"image"];
    [dict1 setObject:@"1" forKey:@"type"];
    
    
    NSMutableDictionary * dict2 = [[NSMutableDictionary alloc]init];
    [dict2 setObject:@"Instagram画风突变？！但我只关心什么时候换图标" forKey:@"title"];
    [dict2 setObject:@"[摘要] 小编点评：其实Instagram的图标不换也好啊，拟物设计还带来了些许复古味道。有玩Instagram的朋友，应该会发现它有个特点：比起同类app，它的更新迭代速度算是慢的，尤其是从设计角度来看" forKey:@"content"];
    [dict2 setObject:@"2" forKey:@"type"];
    
    self.dataArray = @[
                       dict1,dict1,dict2,dict1,dict2
                       ];
    
    NSLog(@"%@",self.dataArray);
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSDictionary * dict = self.dataArray[indexPath.row];
    
    NSLog(@"UITableViewCell >>> %@",dict);
    
    if ([[dict objectForKey:@"type"] isEqualToString:@"1"]) {
        
        PhotoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifer1" forIndexPath:indexPath];
        [self configureCell:cell atIndexPath:indexPath];
        return cell;

        
    }else{
    
        MessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifer2" forIndexPath:indexPath];
        [self configureCell:cell atIndexPath:indexPath];
        return cell;

    }
    
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSDictionary * dict = self.dataArray[indexPath.row];
    
    NSLog(@"CGFloat >>> %@",dict);
    
    if ([[dict objectForKey:@"type"] isEqualToString:@"1"]) {
        
        return [tableView fd_heightForCellWithIdentifier:@"identifer1" cacheByIndexPath:indexPath configuration:^(PhotoTableViewCell *cell) {
            [self configureCell:cell atIndexPath:indexPath];
        }];
        
    }else{
        
        return [tableView fd_heightForCellWithIdentifier:@"identifer2" cacheByIndexPath:indexPath configuration:^(MessageTableViewCell *cell) {
            [self configureCell:cell atIndexPath:indexPath];
        }];
    }
    
    
}

- (void)configureCell:(id)cell atIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@">>>%@",NSStringFromClass([cell class]));
    
    [cell configWithDict:self.dataArray[indexPath.row]];
    

    
}



@end
