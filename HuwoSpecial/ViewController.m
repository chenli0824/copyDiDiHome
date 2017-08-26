//
//  ViewController.m
//  HuwoSpecial
//
//  Created by chenli on 2017/8/23.
//  Copyright © 2017年 chenli. All rights reserved.
//

#import "ViewController.h"
#import "ToutchView.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet ToutchView *touchView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}





//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//	UIView *view = (UIView *)[[self nextResponder] nextResponder];
//	
//	NSLog(@"view:%@",view);
//	return view;
//}
//
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//	NSLog(@"view:%@",touches);
//	
//	UIViewController *view = (UIViewController *)[[[self nextResponder] nextResponder] nextResponder];
//	NSLog(@"xxxxx:%@",view);
//	[view touchesBegan:touches withEvent:event];
//}
//
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//	UIViewController *view = (UIViewController *)[[[self nextResponder] nextResponder] nextResponder];
//	NSLog(@"%@",view);
//	[view touchesEnded:touches withEvent:event];
//}
//
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//	UIViewController *view = (UIViewController *)[[[self nextResponder] nextResponder] nextResponder];
//	NSLog(@"%@",view);
//	[view touchesMoved:touches withEvent:event];
//}
//
//-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//	UIViewController *view = (UIViewController *)[[[self nextResponder] nextResponder] nextResponder];
//	NSLog(@"%@",view);
//	[view touchesCancelled:touches withEvent:event];
//}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}
- (IBAction)click2Action:(id)sender {
	NSLog(@"button Click2");
}
- (IBAction)clickAction:(id)sender {
	NSLog(@"button Click");
}


@end
