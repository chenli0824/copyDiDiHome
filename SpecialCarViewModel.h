//
//  SpecialCarViewModel.h
//  HuwoSpecial
//
//  Created by chenli on 2017/8/25.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SpecialCarService.h"
@interface SpecialCarViewModel : NSObject


-(instancetype)initWithService:(id<SpecialCarService>)service;


-(void)showChooseLocationView;
-(void)showChooseLocationView:(UIViewController *)controller;

@end
