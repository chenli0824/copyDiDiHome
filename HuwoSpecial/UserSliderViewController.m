//
//  UserSilderViewController.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/25.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "UserSliderViewController.h"

@interface UserSliderViewController ()<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leadingConstraint;

@end

@implementation UserSliderViewController

-(void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
}
-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	[self easeIn];
}

-(void)viewDidDisappear:(BOOL)animated{
	[super viewDidDisappear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
	[super viewWillDisappear:animated];
	[self easeOut];
}

-(void)easeIn{
	[self.view updateConstraints];
	self.leadingConstraint.constant = 0;
	[UIView animateWithDuration:0.25
									 animations:^{
		[self.view layoutIfNeeded];
	 UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
	 keyWindow.windowLevel = UIWindowLevelStatusBar+1;
	 [keyWindow addSubview:self.view];
	}];
}

-(void)easeOut{
	[self.view updateConstraints];
	self.leadingConstraint.constant = -240;
	[UIView animateWithDuration:0.25
									 animations:^{
										 [self.view layoutIfNeeded];
										 [UIApplication sharedApplication].keyWindow.windowLevel = UIWindowLevelNormal;
									 }];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.leadingConstraint.constant = -240;
	UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissAction:)];
	tapGesture.delegate = self;
	[self.view addGestureRecognizer:tapGesture];
}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
	
	return ![touch.view isKindOfClass:[UITableView class]];
}


- (IBAction)dismissAction:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
