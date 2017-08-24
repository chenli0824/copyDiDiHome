//
//  ChildView.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/23.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "ChildView.h"
#import "HomeViewController.h"

@implementation ChildView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(UIView *)childView:(UIView *)view_ point:(CGPoint)point_ withEevent:(UIEvent *)event{
	for (UIView *view in view_.subviews) {
//		NSLog(@"%@",view);
//		NSLog(@"nextResponder:%d",[[view nextResponder] isKindOfClass:[UIScrollView class]]);
//		NSLog(@"%d",view.hidden);
//		NSLog(@"%d",[view.backgroundColor isKindOfClass:[UIColor clearColor].class]);
//		NSLog(@"%d",CGColorEqualToColor(view.backgroundColor.CGColor, [UIColor clearColor].CGColor));
//		NSLog(@"%@",view.backgroundColor);
//		NSLog(@"%ld",view.tag);
//		NSLog(@"%lu",(unsigned long)view.subviews.count);
//		NSLog(@"%@",NSStringFromCGSize(self.frame.size));
		if (!CGColorEqualToColor(view.backgroundColor.CGColor, [UIColor clearColor].CGColor) &&
				!view.hidden &&
				![[view nextResponder] isKindOfClass:[UIScrollView class]]) {
//			NSLog(@"不是透明层");
			CGPoint childP = [self convertPoint:point_ toView:view];
			if ([view pointInside:childP withEvent:event]) {
//				NSLog(@"点击到我了");
				return [super hitTest:point_ withEvent:event];
			}else{
//				NSLog(@"没有点到我");
				
			}
		}
		else if(view.subviews.count == 0){
//			NSLog(@"没有了");
			
		}
		else{
			return [self childView:view point:point_ withEevent:event];
		}
	}
	return nil;
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
	
	for (UIView *view in self.subviews) {
//		NSLog(@"clearColor:%@",view.subviews);
		if ([view.backgroundColor isKindOfClass:[UIColor clearColor].class]) {
			return [self childView:view point:point withEevent:event];
		}
	}
	return nil;

}



@end
