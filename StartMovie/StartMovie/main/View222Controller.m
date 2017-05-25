//
//  View222Controller.m
//  LeftSlide
//
//  Created by iMac on 17/3/8.
//  Copyright © 2017年 zws. All rights reserved.
//

#import "View222Controller.h"

@interface View222Controller ()

@end

@implementation View222Controller


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width-40, 30)];
    label.text = @"假装这下面都是商家好吗";
    label.textColor = [UIColor colorWithRed:44/255.0 green:185/255.0 blue:176/255.0 alpha:1];
    label.font = [UIFont systemFontOfSize:20];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
}



@end
