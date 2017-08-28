//
//  SliderAnimationControl.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/25.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "SliderAnimationControl.h"

@implementation SliderAnimationControl

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
	return 0.25;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
	UIView	*containerView = transitionContext.containerView;
	UIViewController	*fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
	UIViewController	*toVC	=	[transitionContext	viewControllerForKey:UITransitionContextToViewControllerKey];
	
	NSTimeInterval	duration	=	[self transitionDuration:transitionContext];
	
	if (toVC.isBeingPresented) {
		
		toVC.view.backgroundColor = [UIColor colorWithRed:40.f / 255.f green:40.f / 255.f blue:40.f / 255.f alpha:0.f];
		[containerView addSubview:toVC.view];
		
		[UIView animateWithDuration:duration
													delay:0
												options:UIViewAnimationOptionCurveEaseIn
										 animations:^{
											 toVC.view.backgroundColor = [UIColor colorWithRed:40.f / 255.f green:40.f / 255.f blue:40.f / 255.f alpha:0.3f];
								
										 } completion:^(BOOL finished) {
											 [transitionContext completeTransition:finished];
										 }];
	}
	
	if (fromVC.isBeingDismissed) {
		[UIView animateWithDuration:duration
													delay:0
												options:UIViewAnimationOptionCurveEaseOut
										 animations:^{
											 fromVC.view.backgroundColor = [UIColor colorWithRed:40.f / 255.f green:40.f / 255.f blue:40.f / 255.f alpha:0.f];
										 } completion:^(BOOL finished) {
											 [transitionContext completeTransition:finished];
										 }];
	}
	
}

@end
