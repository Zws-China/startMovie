//
//  RootTabBarController.m
//  StartMovie
//
//  Created by iMac on 17/5/25.
//  Copyright © 2017年 sinfotek. All rights reserved.
//

#import "RootTabBarController.h"

#import "View111Controller.h"
#import "View222Controller.h"
#import "View333Controller.h"
#import "RootNavController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建子控制器
    [self _createSubCtrls];
    
}

- (void)_createSubCtrls{
    //修改下面文字大小和颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:11],NSFontAttributeName,[UIColor colorWithRed:44/255.0 green:185/255.0 blue:176/255.0 alpha:1],NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:11],NSFontAttributeName,[UIColor colorWithRed:44/255.0 green:185/255.0 blue:176/255.0 alpha:1],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    
    
    
    
    //第三级控制器
    //资讯
    View111Controller *inforCtrl = [[View111Controller alloc] init];
    inforCtrl.title = @"首页";
    UIImage *image = [[UIImage imageNamed:@"icon_tabbar_homepage"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage = [[UIImage imageNamed:@"icon_tabbar_homepage_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    inforCtrl.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:image  selectedImage:selectImage];
    
    //应用
    View222Controller *appCtrl = [[View222Controller alloc] init];
    appCtrl.title = @"商家";
    UIImage *image1 = [[UIImage imageNamed:@"icon_tabbar_merchant_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage1 = [[UIImage imageNamed:@"icon_tabbar_merchant_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    appCtrl.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"商家" image:image1 selectedImage:selectImage1];
    
    //我的
    View333Controller *myCtrl = [[View333Controller alloc] init];
    myCtrl.title = @"我";
    UIImage *image2 = [[UIImage imageNamed:@"icon_tabbar_mine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage2 = [[UIImage imageNamed:@"icon_tabbar_mine_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    myCtrl.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"我" image:image2 selectedImage:selectImage2];
    
    
    //创建数组
    NSArray *viewCtrls = @[inforCtrl,appCtrl,myCtrl];
    
    //创建可变数组,存储导航控制器
    NSMutableArray *navs = [NSMutableArray arrayWithCapacity:viewCtrls.count];
    
    //创建二级控制器导航控制器
    for (UIViewController *ctrl in viewCtrls) {
        RootNavController *nav = [[RootNavController alloc] initWithRootViewController:ctrl];
        
        //将导航控制器加入到数组中
        [navs addObject:nav];
    }
    
    //将导航控制器交给标签控制器管理
    self.viewControllers = navs;
    
}




@end
