//
//  BaseNavigationController.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/25.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIViewController *)childViewControllerForStatusBarHidden{
	return self.visibleViewController;
}

-(BOOL)prefersStatusBarHidden{
	return self.topViewController.prefersStatusBarHidden;
}

-(UIStatusBarAnimation)preferredStatusBarUpdateAnimation{
	return self.topViewController.preferredStatusBarUpdateAnimation;
}

//-(UIViewController *)childViewControllerForStatusBarStyle{
////	NSLog(@"%@",self.visibleViewController);
//	return self.visibleViewController;
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
