//
//  QuickAccessSizeVC.m
//  MyUniversalTool
//
//  Created by hesz on 2017/7/30.
//  Copyright © 2017年 HSZ. All rights reserved.
//

#import "QuickAccessSizeVC.h"
#import "UIView+ExtensionSize.h"
@interface QuickAccessSizeVC ()

@end

@implementation QuickAccessSizeVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self loadNavigation];
    
    [self loadMainView];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)loadNavigation
{
    UIButton *backBtton = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtton.frame = CGRectMake(5, 5, 40, 40);
    backBtton.backgroundColor = [UIColor yellowColor];
    [backBtton setTitle:@"返回" forState:UIControlStateNormal];
    [backBtton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [backBtton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtton];
    self.navigationItem.leftBarButtonItem = buttonItem;
}


- (void)loadMainView
{
    UIView *supView = [[UIView  alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    supView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:supView];
    
    CGFloat blueViewX = supView.x;
    CGFloat blueViewY = supView.y + supView.height + 50;
    CGFloat blueViewW = supView.width;
    CGFloat blueViewH = supView.height;
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(blueViewX, blueViewY, blueViewW, blueViewH)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
}


- (void)goBack
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
