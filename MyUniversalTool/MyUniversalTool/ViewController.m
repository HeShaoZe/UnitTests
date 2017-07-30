//
//  ViewController.m
//  MyUniversalTool
//
//  Created by hesz on 2017/7/30.
//  Copyright © 2017年 HSZ. All rights reserved.
//

#import "ViewController.h"
#import "QuickAccessSizeVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)quickAccessSize:(id)sender
{
    QuickAccessSizeVC *sizeVC = [[QuickAccessSizeVC alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:sizeVC];
    [self presentViewController:nav animated:YES completion:nil];
}



@end
