//
//  RootViewController.m
//  ModeViewController
//
//  Created by Louis on 14-7-11.
//  Copyright (c) 2014年 Louis. All rights reserved.
//

#import "RootViewController.h"
#import "ModeViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    // 1. 添加点击按钮
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    
    [button setTitle:@"push The Mode View" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showModeView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    


}


#pragma mark - 展示模态视图
- (void) showModeView
{
    ModeViewController *modeView = [[ModeViewController alloc]init];
    
    // 记住了，这个模态切换效果是你要展现的模态视图的style，所以设置那个viewController的style不要搞错咯
    // 2. 设置模态视图样式
//    modeView.modalPresentationStyle = UIModalPresentationFullScreen;
//    modeView.modalPresentationStyle = UIModalPresentationPageSheet;
//    modeView.modalPresentationStyle = UIModalPresentationFormSheet;
    modeView.modalPresentationStyle = UIModalPresentationCurrentContext;

    // 3. ios7 里专场效果木有了
//    modeView.modalTransitionStyle  =  UIModalTransitionStyleCoverVertical;
    modeView.modalTransitionStyle  = UIModalTransitionStyleFlipHorizontal;
//    modeView.modalTransitionStyle  = UIModalTransitionStyleCrossDissolve;
//    modeView.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    
    UINavigationController *modeNC = [[UINavigationController alloc]initWithRootViewController:modeView];
    [self presentViewController:modeNC animated:YES completion:^{
        NSLog(@"present mode view");
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
