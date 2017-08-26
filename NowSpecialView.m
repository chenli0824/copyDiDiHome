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
@property (weak, nonatomic) IBOutlet UIButton *toButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *dateButtonHeight;


@end

@implementation NowSpecialView


-(void)specialNow{
	self.selectDateButton.hidden = YES;
	self.dateButtonHeight.constant = 0;
}

-(void)specialReservations{
	self.selectDateButton.hidden = NO;
	self.dateButtonHeight.constant = 30;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
