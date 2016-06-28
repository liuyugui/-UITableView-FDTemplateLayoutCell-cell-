//
//  PhotoTableViewCell.m
//  自适应cell
//
//  Created by 法大大 on 16/6/28.
//  Copyright © 2016年 liuyugui. All rights reserved.
//

#import "PhotoTableViewCell.h"

@interface PhotoTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *topLable;

@property (weak, nonatomic) IBOutlet UILabel *contentLable;

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;

@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

@property (weak, nonatomic) IBOutlet UIImageView *imageView3;


@end

@implementation PhotoTableViewCell


- (void)configWithDict:(NSDictionary *)dict{

    
    self.topLable.text = [dict objectForKey:@"title"];
    self.contentLable.text = [dict objectForKey:@"content"];
    NSArray * array = [dict objectForKey:@"image"];
    
    self.imageView1.image = array[0];
    self.imageView2.image = array[1];
    self.imageView3.image = array[2];
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
