//
//  DNPopMenuItem.h
//  DNCategory
//
//  Created by mainone on 16/5/31.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define kXHMenuTableViewWidth 122
#define kXHMenuTableViewSapcing 7

#define kXHMenuItemViewHeight 36
#define kXHMenuItemViewImageSapcing 15
#define kXHSeparatorLineImageViewHeight 0.5


@interface DNPopMenuItem : NSObject

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, copy) NSString *title;

- (instancetype)initWithImage:(UIImage *)image title:(NSString *)title;

@end
