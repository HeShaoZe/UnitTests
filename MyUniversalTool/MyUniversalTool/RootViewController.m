//
//  RootViewController.m
//  MyUniversalTool
//
//  Created by hesz on 2018/7/21.
//  Copyright © 2018年 HSZ. All rights reserved.
//

#import "RootViewController.h"
#import "HomeViewController.h"
#import "MineViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    HomeViewController *homeVC = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    
    homeVC.title = @"Home";
    UINavigationController *homeNv = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    
    MineViewController *mineVC = [[MineViewController alloc] initWithNibName:@"MineViewController" bundle:nil];
    mineVC.title = @"Mine";
    UINavigationController *mineNv = [[UINavigationController alloc] initWithRootViewController:mineVC];
    
    self.viewControllers = @[homeNv,mineNv];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
