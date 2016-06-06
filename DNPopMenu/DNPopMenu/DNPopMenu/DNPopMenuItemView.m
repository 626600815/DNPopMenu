//
//  DNPopMenuItemView.m
//  DNCategory
//
//  Created by mainone on 16/5/31.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "DNPopMenuItemView.h"


@interface DNPopMenuItemView ()

@property (nonatomic, strong) UIView      *menuSelectedBackgroundView;
@property (nonatomic, strong) UIImageView *separatorLineImageView;

@end

@implementation DNPopMenuItemView

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

- (void)setupPopMenuItem:(DNPopMenuItem *)popMenuItem atIndexPath:(NSIndexPath *)indexPath isBottom:(BOOL)isBottom {
    self.popMenuItem                   = popMenuItem;
    self.textLabel.text                = popMenuItem.title;
    self.imageView.image               = popMenuItem.image;
    self.separatorLineImageView.hidden = isBottom;
}

#pragma mark - Propertys
- (UIView *)menuSelectedBackgroundView {
    if (!_menuSelectedBackgroundView) {
        _menuSelectedBackgroundView                  = [[UIView alloc] initWithFrame:self.contentView.bounds];
        _menuSelectedBackgroundView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        _menuSelectedBackgroundView.backgroundColor  = [UIColor colorWithRed:0.216 green:0.242 blue:0.263 alpha:0.9];
    }
    return _menuSelectedBackgroundView;
}

- (UIImageView *)separatorLineImageView {
    if (!_separatorLineImageView) {
        _separatorLineImageView = [[UIImageView alloc] initWithFrame:CGRectMake(kXHMenuItemViewImageSapcing, kXHMenuItemViewHeight - kXHSeparatorLineImageViewHeight, kXHMenuTableViewWidth - kXHMenuItemViewImageSapcing * 2, kXHSeparatorLineImageViewHeight)];
        _separatorLineImageView.backgroundColor = [UIColor colorWithRed:0.468 green:0.519 blue:0.549 alpha:0.900];
    }
    return _separatorLineImageView;
}

#pragma mark - Life Cycle
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor        = [UIColor clearColor];
        self.textLabel.textColor    = [UIColor whiteColor];
        self.textLabel.font         = [UIFont systemFontOfSize:12];

        self.selectedBackgroundView = self.menuSelectedBackgroundView;
        [self.contentView addSubview:self.separatorLineImageView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGRect textLabelFrame = self.textLabel.frame;
    textLabelFrame.origin.x = CGRectGetMaxX(self.imageView.frame) + 5;
    self.textLabel.frame = textLabelFrame;
}

@end
