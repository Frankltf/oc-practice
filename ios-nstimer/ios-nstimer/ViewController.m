//
//  ViewController.m
//  ios-nstimer
//
//  Created by admin on 2017/6/14.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nstimerLabel;
@property(nonatomic,weak)NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //设置定时器
    _timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(change) userInfo:nil repeats:YES];
    
}
//点击按钮停止定时
-(void)change{
    int i=0;
    NSLog(@"%d",111);
}

- (IBAction)stop:(id)sender {
    [_timer invalidate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
