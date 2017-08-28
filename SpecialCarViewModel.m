//
//  SpecialCarViewModel.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/25.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "SpecialCarViewModel.h"
#import "SpecialCarServiceImpl.h"
#import "ChooseLocationViewController.h"
#import "PresentAnimationControl.h"
#import "ModalTransitionDelegate.h"

@interface SpecialCarViewModel()

@property(nonatomic,strong) SpecialCarServiceImpl	*serviceImpl;
@property(nonatomic,strong)	ModalTransitionDelegate	*transitionDelegate;

@end


@implementation SpecialCarViewModel

-(instancetype)initWithService:(id<SpecialCarService>)service{
	self = [super init];
	if (self) {
		self.serviceImpl = (SpecialCarServiceImpl *)service;
		_transitionDelegate = [[ModalTransitionDelegate alloc] initWithTransitioning:[[PresentAnimationControl alloc] init]];
	}
	return self;
}

-(void)showChooseLocationView:(UIViewController *)controller{
	controller.transitioningDelegate = self.transitionDelegate;
	controller.modalPresentationStyle = UIModalPresentationCustom;
	[[self.serviceImpl getNavigationController] presentViewController:controller animated:YES completion:nil];
}


-(void)showChooseLocationView{
	ChooseLocationViewController *chooseLocationView = [[UIStoryboard storyboardWithName:@"ChooseLocation" bundle:nil] instantiateViewControllerWithIdentifier:@"ChooseLocationViewController"];
	chooseLocationView.transitioningDelegate = self.transitionDelegate;
	chooseLocationView.modalPresentationStyle = UIModalPresentationCustom;
	[[self.serviceImpl getNavigationController] presentViewController:chooseLocationView animated:YES completion:nil];
}
@end
