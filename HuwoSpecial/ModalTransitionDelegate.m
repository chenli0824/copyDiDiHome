//
//  ModalTransitionDelegate.m
//  ELearning4
//
//  Created by chenli on 16/4/18.
//  Copyright © 2016年 chenli. All rights reserved.
//

#import "ModalTransitionDelegate.h"

@interface ModalTransitionDelegate()

@property(nonatomic,strong) id<UIViewControllerAnimatedTransitioning> animatedTransitioning;

@end

@implementation ModalTransitionDelegate

-(instancetype)initWithTransitioning:(id<UIViewControllerAnimatedTransitioning>)transitioning{
	self = [super init];
	if (self) {
		self.animatedTransitioning = transitioning;
	}
	
	return self;
}


- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
	return self.animatedTransitioning;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
	return self.animatedTransitioning;
}

- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source {
	return nil;
}

@end
