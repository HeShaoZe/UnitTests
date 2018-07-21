//
//  HomeDetailVC.m
//  MyUniversalTool
//
//  Created by hesz on 2018/7/21.
//  Copyright © 2018年 HSZ. All rights reserved.
//

#import "HomeDetailVC.h"

@interface HomeDetailVC ()

@property (strong, nonatomic) IBOutlet UITextField *textFieldOne;

@property (strong, nonatomic) IBOutlet UITextField *textFieldTwo;


@property (strong, nonatomic) IBOutlet UIWebView *myWebView;



@end

@implementation HomeDetailVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self loadMainWebView];
    // Do any additional setup after loading the view from its nib.
}

- (void)loadMainWebView
{
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com"];
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:url]];
}


- (IBAction)dimssTakeAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


- (IBAction)loginTakeAction:(id)sender
{
    if ((self.textFieldOne.text.length == 0) && (self.textFieldTwo.text.length == 0))
    {
        UIAlertView *alserView = [[UIAlertView alloc] initWithTitle:@"Title" message:@"没有内容" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
        [alserView show];
    }
    else
    {
        UIAlertView *alserView = [[UIAlertView alloc] initWithTitle:@"Title" message:@"有内容" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
        [alserView show];
    }
}


- (IBAction)reloadAction:(id)sender
{
    [self.myWebView reload];
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
