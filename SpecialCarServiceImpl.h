//
//  SpecialCarServiceImpl.h
//  HuwoSpecial
//
//  Created by chenli on 2017/8/26.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SpecialCarService.h"
#import <UIKit/UIKit.h>
@interface SpecialCarServiceImpl : NSObject<SpecialCarService>

-(instancetype)initWithNavigationController:(UINavigationController *)navigationConroller;

@end
