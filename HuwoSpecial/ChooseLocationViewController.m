//
//  ChooseLocationViewController.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/26.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "ChooseLocationViewController.h"

@interface ChooseLocationViewController ()

@end

@implementation ChooseLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)closeAction:(UIButton *)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
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
