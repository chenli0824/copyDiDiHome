//
//  HWSpecialCarViewController.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/24.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "HWSpecialCarViewController.h"
#import "NowSpecialView.h"
#import "AirPortSpecialView.h"

@interface HWSpecialCarViewController ()
@property (weak, nonatomic) IBOutlet UIView *functionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *functionHeightConstrains;
@property	(nonatomic,assign) int currentType;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightConstraint;
@property (strong, nonatomic)  NowSpecialView *nowSpecialView;
@property (strong, nonatomic)  AirPortSpecialView *airPortSpecialView;

@end

@implementation HWSpecialCarViewController

@dynamic viewModel;

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	self.airPortSpecialView = [[[NSBundle mainBundle] loadNibNamed:@"AirPortSpecialView" owner:nil options:nil] lastObject];
	self.nowSpecialView = [[[NSBundle mainBundle] loadNibNamed:@"NowSpecialView" owner:nil options:nil] lastObject];
	[self.nowSpecialView specialNow];
	[self.functionView addSubview:self.nowSpecialView];
	[self addFunctionViewConstraintsInView:self.nowSpecialView];
	self.currentType = 0;
	[self updateViewAnimate];
	[self.nowSpecialView.toButton addTarget:self action:@selector(toAction) forControlEvents:UIControlEventTouchUpInside];
}



-(IBAction)chooseType:(UIButton *)sender {
	
	if (sender.tag == 0 && sender.tag == 1) {
		
	}
	
	if (sender.tag == 0) {
		//专车预约
		[self.airPortSpecialView removeFromSuperview];
		if (!self.nowSpecialView.superview) {
			[self.functionView addSubview:self.nowSpecialView];
			[self addFunctionViewConstraintsInView:self.nowSpecialView];
		}
		
		
		[self.nowSpecialView specialNow];
	}
	else if(sender.tag == 1){
		[self.airPortSpecialView removeFromSuperview];
		if (!self.nowSpecialView.superview) {
			[self.functionView addSubview:self.nowSpecialView];
			[self addFunctionViewConstraintsInView:self.nowSpecialView];
		}
		
		[self.nowSpecialView specialReservations];
	}
	else if(sender.tag == 2){
		[self.nowSpecialView removeFromSuperview];
		if (!self.airPortSpecialView.superview) {
			[self.functionView addSubview:self.airPortSpecialView];
			[self addFunctionViewConstraintsInView:self.airPortSpecialView];
		}
		
		[self.airPortSpecialView fromAirPort];
	}
	
	[self updateViewAnimate];
}


-(void)toAction{

}

-(void)updateViewAnimate{
	[self.view setNeedsUpdateConstraints];
	[self.functionView setNeedsUpdateConstraints];
	[UIView animateWithDuration:0.15 animations:^{
		[self.view layoutIfNeeded];
		[self.functionView layoutIfNeeded];
	}];
}

-(void)addFunctionViewConstraintsInView:(UIView *)view{
	
	view.translatesAutoresizingMaskIntoConstraints = NO;
	NSMutableArray *array = [NSMutableArray array];
	NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.functionView attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
	[array addObject:leftConstraint];
	
	NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.functionView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
	[array addObject:rightConstraint];
	
	NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.functionView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
	[array addObject:topConstraint];
	
	NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.functionView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
	
	[array addObject:bottomConstraint];
	
	[self.functionView addConstraints:[array copy]];
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
