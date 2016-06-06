//
//  DNPopMenuItem.m
//  DNCategory
//
//  Created by mainone on 16/5/31.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "DNPopMenuItem.h"

@implementation DNPopMenuItem

- (instancetype)initWithImage:(UIImage *)image title:(NSString *)title {
    self = [super init];
    if (self) {
        self.image = image;
        self.title = title;
    }
    return self;
}


@end
