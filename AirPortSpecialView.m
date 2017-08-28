//
//  AirPortSpecialView.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/26.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "AirPortSpecialView.h"

@interface AirPortSpecialView()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentHeight;

@end

@implementation AirPortSpecialView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


/**
 送机
 */
-(void)toAirPort{
	self.contentHeight.constant = 123;
//	[self viewAnimate];
	
}

/**
 接机
 */
-(void)fromAirPort{
	self.contentHeight.constant = 152;
//	[self viewAnimate];
	
}


-(void)viewAnimate{
	[self updateConstraints];
	[UIView animateWithDuration:0.15
									 animations:^{
										 [self layoutIfNeeded];
										 
									 } completion:^(BOOL finished) {
										 
									 }];
}

@end
