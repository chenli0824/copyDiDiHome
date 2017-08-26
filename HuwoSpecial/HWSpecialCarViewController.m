//
//  HWSpecialCarViewController.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/24.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "HWSpecialCarViewController.h"
#import "NowSpecialView.h"

@interface HWSpecialCarViewController ()
@property (weak, nonatomic) IBOutlet UIView *functionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *functionHeightConstrains;
@property	(nonatomic,assign) int currentType;
@property	(nonatomic,strong) NowSpecialView *nowSpecialView;

@end

@implementation HWSpecialCarViewController


-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
//	self.nowSpecialView = [[[NSBundle mainBundle] loadNibNamed:@"NowSpecialView" owner:nil options:nil] lastObject];
////	if (self.currentType == 0) {
////		[self.nowSpecialView specialNow];
////	}
//	NSLog(@"%@",NSStringFromCGSize(self.nowSpecialView.frame.size));
//	NSLog(@"%@",NSStringFromCGSize(self.functionView.frame.size));
//	
//	self.functionHeightConstrains.constant = CGRectGetHeight(self.nowSpecialView.frame)-30;
//	
//    CGRect frame      = self.nowSpecialView.frame;
//    frame.size.width  = CGRectGetWidth(self.functionView.frame);
//    frame.size.height = CGRectGetHeight(self.functionView.frame);
//	self.nowSpecialView.frame = frame;
//	
//	NSLog(@"%@",NSStringFromCGSize(self.nowSpecialView.frame.size));
//	NSLog(@"%@",NSStringFromCGSize(self.functionView.frame.size));
//	
//	[self.functionView addSubview:self.nowSpecialView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	self.currentType = 0;
	
	
    // Do any additional setup after loading the view.
}
- (IBAction)chooseType:(UIButton *)sender {
	
//	CGRect frame = self.functionView.layer.frame;
//	
//	
//	if (sender.tag == 1) {
//		
////		[self.nowSpecialView specialReservations];
////		[self.functionView setNeedsUpdateConstraints];
//		
//		self.functionHeightConstrains.constant = 158;
//	}
//	else{
//		
//		self.functionHeightConstrains.constant = 122;
////		[self.nowSpecialView specialNow];
//	}
////
//	[self.functionView setNeedsUpdateConstraints];
//	[UIView transitionWithView:self.functionView duration:0.1 options:UIViewAnimationOptionCurveEaseIn
//									animations:^{
//									
//										[self.functionView layoutIfNeeded];
//									} completion:^(BOOL finished) {
//										
//									}];
//	[UIView animateWithDuration:1.0 animations:^{
//		[self.functionView layoutIfNeeded];
//		
//		
//	}];
//
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
