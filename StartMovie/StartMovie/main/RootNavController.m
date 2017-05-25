//
//  RootNavController.m
//  StartMovie
//
//  Created by iMac on 17/5/25.
//  Copyright © 2017年 sinfotek. All rights reserved.
//

#import "RootNavController.h"

@interface RootNavController ()

@end

@implementation RootNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationBar.barTintColor = [UIColor colorWithRed:44/255.0 green:185/255.0 blue:176/255.0 alpha:1];
}
@end
