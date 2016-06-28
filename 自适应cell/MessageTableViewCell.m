//
//  MessageTableViewCell.m
//  自适应cell
//
//  Created by 法大大 on 16/6/28.
//  Copyright © 2016年 liuyugui. All rights reserved.
//

#import "MessageTableViewCell.h"

@interface MessageTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *contentLable;

@property (weak, nonatomic) IBOutlet UILabel *topLable;

@end

@implementation MessageTableViewCell

- (void)configWithDict:(NSDictionary *)dict{
    
    
    self.topLable.text = [dict objectForKey:@"title"];
    self.contentLable.text = [dict objectForKey:@"content"];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
