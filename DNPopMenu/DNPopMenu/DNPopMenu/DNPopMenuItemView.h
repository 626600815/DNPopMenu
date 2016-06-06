//
//  DNPopMenuItemView.h
//  DNCategory
//
//  Created by mainone on 16/5/31.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DNPopMenuItem.h"

@interface DNPopMenuItemView : UITableViewCell

@property (nonatomic, strong) DNPopMenuItem *popMenuItem;

- (void)setupPopMenuItem:(DNPopMenuItem *)popMenuItem atIndexPath:(NSIndexPath *)indexPath isBottom:(BOOL)isBottom;

@end


/*
    处理item下移情况
 if ([self respondsToSelector:@selector(automaticallyAdjustsScrollViewInsets)]) {
 self.automaticallyAdjustsScrollViewInsets = NO;
 }
 
 
 - (DNPopMenu *)popMenu {
     if (!_popMenu) {
     
         NSMutableArray *popMenuItems = [[NSMutableArray alloc] initWithCapacity:6];
         
         NSArray *menuArray = @[@{@"image":@"contacts_add_newmessage", @"title":@"发起群聊"},
         @{@"image":@"contacts_add_friend", @"title":@"添加朋友"},
         @{@"image":@"contacts_add_scan", @"title":@"扫一扫"},
         @{@"image":@"contacts_add_photo", @"title":@"拍照分享"},
         @{@"image":@"contacts_add_voip", @"title":@"视频聊天"}
         ];
         
         [menuArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *imageName = [NSString stringWithFormat:@"PopMenu.bundle/%@", [obj objectForKey:@"image"]];
             NSString *title = [obj objectForKey:@"title"];
             
             DNPopMenuItem *popMenuItem = [[DNPopMenuItem alloc] initWithImage:[UIImage imageNamed:imageName] title:title];
             [popMenuItems addObject:popMenuItem];
         }];
         
         _popMenu = [[DNPopMenu alloc] initWithMenus:popMenuItems];
         _popMenu.popMenuDidSlectedCompled = ^(NSInteger index, DNPopMenuItem *popMenuItems) {
         
         };
     }
     return _popMenu;
 }

 
 */