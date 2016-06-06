//
//  DNPopMenu.h
//  DNCategory
//
//  Created by mainone on 16/5/31.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DNPopMenuItem.h"

typedef void(^PopMenuDidSlectedCompledBlock)(NSInteger index, DNPopMenuItem *menuItem);

@interface DNPopMenu : UIView

- (instancetype)initWithMenus:(NSArray *)menus;

- (instancetype)initWithObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION;

- (void)showMenuAtPoint:(CGPoint)point;

- (void)showMenuOnView:(UIView *)view atPoint:(CGPoint)point;

@property (nonatomic, copy) PopMenuDidSlectedCompledBlock popMenuDidSlectedCompled;

@property (nonatomic, copy) PopMenuDidSlectedCompledBlock popMenuDidDismissCompled;

@end
