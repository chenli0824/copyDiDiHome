//
//  SpecialCarServiceImpl.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/26.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "SpecialCarServiceImpl.h"

@interface SpecialCarServiceImpl()

@property (nonatomic,strong) UINavigationController *navigationControl;

@end

@implementation SpecialCarServiceImpl

-(instancetype)initWithNavigationController:(UINavigationController *)navigationConroller{
	self = [super init];
	if (self) {
		_navigationControl = navigationConroller;
	}
	return self;
}


-(UINavigationController *)getNavigationController{
	return self.navigationControl;
}


@end
