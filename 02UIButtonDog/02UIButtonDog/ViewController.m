//
//  ViewController.m
//  02UIButtonDog
//
//  Created by 小太阳 on 16/3/31.
//  Copyright © 2016年 小太阳. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *headBtn;

@end

@implementation ViewController

//定义全局的静态变量
static CGFloat delta = 20;

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    添加head的点击事件
    [_headBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)btnClick:(UIButton *)headBtn
{
    NSLog(@"%s",__func__);

}

//方向键的点击事件（四个方向键根据tag来区分）
- (IBAction)Move:(UIButton *)sender {
    
    CGPoint tempCenter = _headBtn.center;
    switch (sender.tag) {
        case 10://向上
            tempCenter.y -= delta;
            break;
        case 20://向左
            tempCenter.x -= delta;
            break;
        case 30://向下
            tempCenter.y += delta;
            break;
        case 40://向右
            tempCenter.x += delta;
            break;
             default:
            break;
    }
    [UIView animateWithDuration:1 animations:^{
//        给狗头的center赋值
        _headBtn.center = tempCenter;
        
    }];
//    执行动画
    [UIView commitAnimations];
    
    
}

//改变大小+- 的点击事件
- (IBAction)scaleAction:(UIButton *)sender {
    
//    方式一
    
#if 0
    CGRect tempFrame = _headBtn.frame;
    
    if (sender.tag == 50) {//放大
        tempFrame.origin.x -= delta;
        tempFrame.origin.y -= delta;
        tempFrame.size.width +=delta;
        tempFrame.size.height += delta;
        
    }else if (sender.tag == 60){//减小
    tempFrame.origin.x += delta;
    tempFrame.origin.y += delta;
    tempFrame.size.width -=delta;
    tempFrame.size.height -= delta;
    }
    [UIView animateWithDuration:1 animations:^{
        
        _headBtn.frame = tempFrame;
        
    }];
    
    
//    第二种方式
#else
    [UIView animateWithDuration:0.5 animations:^{
        if (sender.tag == 50) {//放大
            _headBtn.transform = CGAffineTransformScale(_headBtn.transform, 1.2, 1.2);
        }else if (sender.tag == 60){//缩小
            _headBtn.transform = CGAffineTransformScale(_headBtn.transform, 0.8, 0.8);
        }
    }];
    
#endif
}


//旋转的点击事件
- (IBAction)xuanZhuanAction:(UIButton *)sender {
    
    if (sender.tag == 70) {
        [UIView animateWithDuration:1 animations:^{//逆时针旋转
            
            _headBtn.transform = CGAffineTransformRotate(_headBtn.transform, -(M_PI / 6));
            
        }];
    }else if (sender.tag == 80){
    [UIView animateWithDuration:0.5 animations:^{
        
        _headBtn.transform = CGAffineTransformRotate(_headBtn.transform, (M_PI / 6));
    }];
    
    
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
