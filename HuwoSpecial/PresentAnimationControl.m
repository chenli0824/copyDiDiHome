//
//  PresentAnimationControl.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/26.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "PresentAnimationControl.h"
#import "HomeViewController.h"

@implementation PresentAnimationControl

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
	return 0.25;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
	UIView	*containerView = transitionContext.containerView;
	UIViewController	*fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
	UIViewController	*toVC	=	[transitionContext	viewControllerForKey:UITransitionContextToViewControllerKey];
	NSTimeInterval	duration	=	[self transitionDuration:transitionContext];
	
	if (toVC.isBeingPresented) {
		HomeViewController *homeViewControl;
		if ([fromVC isKindOfClass:[UINavigationController class]]) {
			homeViewControl = (HomeViewController *)[(UINavigationController *)fromVC topViewController];
		}
		
		CGRect toViewFrame = CGRectOffset(toVC.view.frame, 0, CGRectGetHeight(toVC.view.frame));
		toVC.view.frame = toViewFrame;
		[containerView addSubview:toVC.view];
		
		homeViewControl.topConstraint.constant = -108;
		
		[homeViewControl.view setNeedsUpdateConstraints];
		[UIView animateWithDuration:duration
													delay:0
												options:UIViewAnimationOptionCurveEaseIn
										 animations:^{
											 [homeViewControl.view layoutIfNeeded];
											 toVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(toVC.view.frame), CGRectGetHeight(toVC.view.frame));
									
											 
										 } completion:^(BOOL finished) {
											 [transitionContext completeTransition:finished];
										 }];
	}
	
	if (fromVC.isBeingDismissed) {
		CGRect fromViewFinalFrame = CGRectOffset(fromVC.view.frame, 0, CGRectGetHeight(fromVC.view.frame));
		HomeViewController *homeViewControl;
		if ([toVC isKindOfClass:[UINavigationController class]]) {
			homeViewControl = (HomeViewController *)[(UINavigationController *)toVC topViewController];
		}
		homeViewControl.topConstraint.constant = 0;
		[homeViewControl.view setNeedsUpdateConstraints];
		
		[UIView animateWithDuration:duration
													delay:0
												options:UIViewAnimationOptionCurveEaseOut
										 animations:^{
											 [homeViewControl.view layoutIfNeeded];
											 fromVC.view.frame = fromViewFinalFrame;
										 } completion:^(BOOL finished) {
											 [transitionContext completeTransition:finished];
										 }];
	}
	
}

@end
