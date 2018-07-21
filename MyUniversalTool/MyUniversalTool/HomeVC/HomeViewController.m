//
//  HomeViewController.m
//  MyUniversalTool
//
//  Created by hesz on 2018/7/21.
//  Copyright © 2018年 HSZ. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeDetailVC.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)pushHomeDetailVC:(id)sender
{
    HomeDetailVC *homeDetailVC = [[HomeDetailVC alloc] initWithNibName:@"HomeDetailVC" bundle:nil];
    [self.navigationController pushViewController:homeDetailVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
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
