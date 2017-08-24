//
//  BasePageViewController.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/24.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "BasePageViewController.h"

@interface BasePageViewController ()<UIGestureRecognizerDelegate>

@end

@implementation BasePageViewController

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	self.view.backgroundColor = [UIColor clearColor];
	for (id view in self.view.subviews) {
		if ([view isKindOfClass:[UIScrollView class]]) {
			[(UIScrollView *)view setBackgroundColor:[UIColor clearColor]];
			[(UIScrollView *)view setScrollEnabled:NO];
			[(UIScrollView *)view setPagingEnabled:NO];
		}
		
		if ([view isKindOfClass:[UIPageControl class]]) {
			[(UIPageControl *)view setBackgroundColor:[UIColor clearColor]];
		}
	}
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
	return NO;
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
