//
//  ViewController.m
//  04UIViewController
//
//  Created by 小太阳 on 16/4/1.
//  Copyright © 2016年 小太阳. All rights reserved.
//

#import "ViewController.h"
#import "QYViewController.h"
@interface ViewController ()

@end

@implementation ViewController


//重写初始化方法
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
        
    }
    return self;

}

//这个方法重写的时候，要确保self.view不为nil,创建一个普通的view
-(void)loadView
{
    
#if 1
    UIView *tempView = [[UIView alloc]init];
    tempView.backgroundColor = [UIColor purpleColor];
    tempView.alpha = 1;
    self.view = tempView;
#else
    
//    将webView设置视图控制器的根视图
    UIWebView *web = [[UIWebView alloc]init];
    self.view = web;
  
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    
    
//     将tableViews设置视图控制器的根视图

    UITableView *tableView = [[UITableView alloc]init];
    self.view = tableView;
#endif
    NSLog(@"%s",__func__);
    
}

//在这里创建Button
- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 60)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
}

//btn的点击事件
-(void)clickAction:(UIButton *)button
{
//    使用模态方式将视图QYvc弹出
    QYViewController *QYvc =[[ QYViewController alloc]init];
    [self presentViewController:QYvc animated:YES completion:nil];

}
//视图将要显示
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    NSLog(@"%s",__func__);

}
//视图已经显示
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"%s",__func__);

}
//视图将要消失
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    NSLog(@"%s",__func__);

}
//视图已经消失
-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"%s",__func__);

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
