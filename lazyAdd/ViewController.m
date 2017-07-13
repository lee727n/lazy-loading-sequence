//
//  ViewController.m
//  lazyAdd
//
//  Created by 刘梓轩 on 2017/7/13.
//  Copyright © 2017年 MIKEz. All rights reserved.
//

#import "ViewController.h"
#import "myview.h"

@interface ViewController ()
@property (nonatomic,copy) NSString *ist;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    myview *vc = [[myview alloc]initWithFrame:CGRectMake(50, 50, 300, 300)];
    [self.view addSubview:vc];
    vc.backgroundColor = [UIColor whiteColor];
    vc.saleAcount.text = @"182246";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
