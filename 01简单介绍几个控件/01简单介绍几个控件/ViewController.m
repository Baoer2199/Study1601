//
//  ViewController.m
//  01简单介绍几个控件
//
//  Created by 小太阳 on 16/3/31.
//  Copyright © 2016年 小太阳. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *Num1;
@property (weak, nonatomic) IBOutlet UITextField *Num2;
@property (weak, nonatomic) IBOutlet UITextField *total;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_Num1 becomeFirstResponder];
    [_Num2 becomeFirstResponder];
}

//点击求和

- (IBAction)qiuhe:(id)sender {
    
    int firstRes = [_Num1.text intValue];
    int secRes = [_Num2.text intValue];
    int result = firstRes + secRes;
    
    _total.text = [@(result) stringValue];
#if 1
    [_Num1 resignFirstResponder];
    [_Num2 resignFirstResponder];
    
#else
    [self.view endEditing:YES];
    
#endif

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
