//
//  CLViewController.h
//  MoneyTree
//
//  Created by chenli on 2017/3/16.
//  Copyright © 2017年 yqs. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CLViewController <NSObject>

@property (nonatomic,readonly) id viewModel;

-(instancetype)initWithViewModel:(id)viewModel;
-(instancetype)initWithStoryboard:(NSString *)storyboard_name identifier:(NSString *)indentifier_ viewModel:(id)viewModel_;

@end

@interface CLViewController : UIViewController<CLViewController>

@end
