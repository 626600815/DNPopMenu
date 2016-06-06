# DNPopMenu
弹出菜单,类似QQ那种样式的
![snapshot](https://github.com/626600815/DNPopMenu/blob/master/DNPopMenu/ss.gif)

###使用方法

添加头文件

####实际使用过程中只需要修改menuArray中的项目为自己需要的栏目即可

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

//显示Menu

    [self.popMenu showMenuAtPoint:CGPointZero];


####注意事项
处理ios7之后cell下移问题 ,在controller中添加适配代码
     if ([self respondsToSelector:@selector(automaticallyAdjustsScrollViewInsets)]) {
            self.automaticallyAdjustsScrollViewInsets = NO;
        }


具体用法看Demo即可



