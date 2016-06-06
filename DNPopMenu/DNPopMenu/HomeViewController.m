//
//  HomeViewController.m
//  DNPopMenu
//
//  Created by mainone on 16/6/4.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "HomeViewController.h"
#import "DNPopMenu.h"

@interface HomeViewController ()

@property (nonatomic, strong) DNPopMenu *popMenu;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self respondsToSelector:@selector(automaticallyAdjustsScrollViewInsets)]) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(showMenuOnView:)];
}

- (void)showMenuOnView:(UIBarButtonItem *)item {
    [self.popMenu showMenuAtPoint:CGPointZero];
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
            NSLog(@"点击的是第%ld个,名字是%@", (long)index, popMenuItems.title);
        };
    }
    return _popMenu;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
