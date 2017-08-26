//
//  ModalTransitionDelegate.h
//  ELearning4
//
//  Created by chenli on 16/4/18.
//  Copyright © 2016年 chenli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ModalTransitionDelegate : NSObject <UIViewControllerTransitioningDelegate>

-(instancetype)initWithTransitioning:(id<UIViewControllerAnimatedTransitioning>)transitioning;

@end
