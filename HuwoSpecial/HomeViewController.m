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
	HWSpecialCarViewController	*carViewController = [[UIStoryboard storyboardWithName:@"SpecialCar" bundle:nil] instantiateViewControllerWithIdentifier:@"HWSpecialCarViewController"];
	self.controllers = @[carViewController,viewCotroller];
	self.pageViewController.dataSource = self;
	self.pageViewController.delegate = self;
	
	[self.pageViewController setViewControllers:@[self.controllers[self.pageIndex]] direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:^(BOOL finished) {
		
	}];
	
}
	

//-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController{
//	return self.controllers.count;
//}
//
//-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController{
//	return self.pageIndex;
//}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
	NSLog(@"%@",viewController);
//	HWSpecialCarViewController	*carViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HWSpecialCarViewController"];
	return nil;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
	NSLog(@"%@",viewController);
//	HWSpecialCarViewController	*carViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HWSpecialCarViewController"];
	return nil;
}

- (IBAction)userAction:(id)sender {
	
	
	
	UserSliderViewController	*userSliderView = [[UIStoryboard storyboardWithName:@"User" bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass(UserSliderViewController.class)];
	userSliderView.transitioningDelegate= self.transitionDelegate;
	userSliderView.modalPresentationStyle = UIModalPresentationCustom;
	[self presentViewController:userSliderView animated:YES completion:^{
		
	}];
	
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//	NSLog(@"home:%@",touches);
//	NSLog(@"%@",[self nextResponder]);
//}


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
