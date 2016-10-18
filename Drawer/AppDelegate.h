//
//  AppDelegate.h
//  Drawer
//
//  Created by Jerry on 16/9/14.
//  Copyright © 2016年 周玉举. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HomeViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic,strong)UINavigationController * nav;
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,strong)HomeViewController *mainVC;

@end

