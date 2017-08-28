//
//  HomeViewController.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/23.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "HomeViewController.h"
#import "ChildView.h"
#import "ViewController.h"
#import "SpecialCarServiceImpl.h"
#import "SpecialCarViewModel.h"
#import "HWSpecialCarViewController.h"
#import "BasePageViewController.h"
#import "ModalTransitionDelegate.h"
#import "SliderAnimationControl.h"
#import "UserSliderViewController.h"

@interface HomeViewController ()<UIPageViewControllerDelegate,UIPageViewControllerDataSource>
@property (weak, nonatomic) IBOutlet ChildView *containerView;
@property	(nonatomic,strong)	BasePageViewController *pageViewController;
@property	(nonatomic,strong) NSArray *controllers;
@property	(nonatomic,assign) int pageIndex;
@property	(nonatomic,strong) ModalTransitionDelegate	*transitionDelegate;

@end

@implementation HomeViewController

-(void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[self.navigationController setNavigationBarHidden:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
	[super viewWillDisappear:animated];
	[self.navigationController setNavigationBarHidden:NO];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	SliderAnimationControl *sliderAnimation = [[SliderAnimationControl alloc] init];
	self.transitionDelegate = [[ModalTransitionDelegate alloc] initWithTransitioning:sliderAnimation];
//	UIPageViewController *pageViewController = self.containerView
    // Do any additional setup after loading the view.
}
- (IBAction)buttonIndexAction:(UIButton *)sender {
	
	if (self.pageIndex == 0) {
		self.pageIndex = 1;
		[self.pageViewController setViewControllers:@[self.controllers[self.pageIndex]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:^(BOOL finished) {
			
		}];
	}
	else if(self.pageIndex == 1){
		self.pageIndex = 0;
		[self.pageViewController setViewControllers:@[self.controllers[self.pageIndex]] direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:^(BOOL finished) {
			
		}];
	}
	
	
}




-(void)initPageViewController{
	
	self.pageIndex = 0;
	ViewController *viewCotroller = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
	SpecialCarViewModel *viewModel = [[SpecialCarViewModel alloc] initWithService:[[SpecialCarServiceImpl alloc] initWithNavigationController:self.navigationController]];
	HWSpecialCarViewController	*carViewController = [[HWSpecialCarViewController alloc] initWithStoryboard:@"SpecialCar" identifier:@"HWSpecialCarViewController" viewModel:viewModel];
	
	self.controllers = @[carViewController,viewCotroller];
	self.pageViewController.dataSource = self;
	self.pageViewController.delegate = self;
	
	[self.pageViewController setViewControllers:@[self.controllers[self.pageIndex]] direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:^(BOOL finished) {
		
	}];
	
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
	NSLog(@"%@",viewController);
	return nil;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
	NSLog(@"%@",viewController);
	return nil;
}

- (IBAction)userAction:(id)sender {
	UserSliderViewController	*userSliderView = [[UIStoryboard storyboardWithName:@"User" bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass(UserSliderViewController.class)];
	userSliderView.transitioningDelegate= self.transitionDelegate;
	userSliderView.modalPresentationStyle = UIModalPresentationCustom;
	[self presentViewController:userSliderView animated:YES completion:^{
		
	}];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([[segue identifier] isEqualToString:@"PageView"]) {
		self.pageViewController = [segue destinationViewController];
		[self initPageViewController];
	}
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
