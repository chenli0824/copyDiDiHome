//
//  NowSpecialView.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/25.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "NowSpecialView.h"

@interface NowSpecialView()

@property (weak, nonatomic) IBOutlet UIButton *selectDateButton;
@property (weak, nonatomic) IBOutlet UIButton *fromButton;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *dateButtonHeight;


@end

@implementation NowSpecialView


-(void)specialNow{
	self.dateButtonHeight.constant = 0;
//	[self viewAnimate];
	self.selectDateButton.hidden = YES;
}

-(void)specialReservations{
	
	self.dateButtonHeight.constant = 40;
//	[self viewAnimate];
	self.selectDateButton.hidden = NO;
}


-(void)viewAnimate{
	[self updateConstraints];
	[UIView animateWithDuration:0.15
									 animations:^{
										 [self layoutIfNeeded];
									 } completion:^(BOOL finished) {
										 
									 }];
}

-(IBAction)selectDateAction:(id)sender{
	NSLog(@"选择时间");
}

-(IBAction)fromButtonAction:(UIButton *)sender{
	NSLog(@"from");
}

-(IBAction)toButtonAction:(UIButton *)sender{
	NSLog(@"to");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
