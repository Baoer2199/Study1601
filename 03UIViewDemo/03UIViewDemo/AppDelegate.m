//
//  AppDelegate.m
//  03UIViewDemo
//
//  Created by 小太阳 on 16/3/31.
//  Copyright © 2016年 小太阳. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    创建window
    UIWindow *window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    window.backgroundColor = [UIColor whiteColor];
    window.hidden = NO;
    self.window = window;
    
//    创建window的根视图控制器
    UIViewController *vc = [[UIViewController alloc]init];
    window.rootViewController = vc;
    vc.view.backgroundColor = [UIColor cyanColor];
    
//  window上添加一个视图A红色
    UIView *ViewA = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 500)];
    [ViewA setBackgroundColor:[UIColor redColor]];
    [window addSubview:ViewA];
    ViewA.alpha = 0.7;
    ViewA.userInteractionEnabled = YES;

//    在ViewA视图上添加一个橘色视图ViewB
    UIView *ViewB = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 300)];
//    [originView setBackgroundColor:[UIColor orangeColor]];
    [ViewA addSubview:ViewB];
    ViewB.backgroundColor = [UIColor orangeColor];
    ViewA.alpha = 1;

//    ViewA 根据索引添加视图C
    UIView *ViewC = [[UIView alloc]initWithFrame:CGRectMake(90, 0, 200, 300)];
    [ViewA insertSubview:ViewC atIndex:0];
    ViewC.backgroundColor = [UIColor yellowColor];
    
    
//    将ViewA从父视图中移除
//    [ViewA removeFromSuperview];
    
    
//    ViewA上的两个视图交换层次结构
    
    [ViewA exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
    
//  在A的子视图B上插入一个视图D
    UIView *viewD = [[UIView alloc]initWithFrame:CGRectMake(50, 20, 200, 200)];
    [ViewA insertSubview:viewD aboveSubview:ViewB];
    viewD.backgroundColor = [UIColor greenColor];
    
    
//    在子视图C下插入一个视图E
    UIView *viewE = [[UIView alloc]initWithFrame:CGRectMake(0,0, 100, 100)];
    
    [ViewA insertSubview:viewE belowSubview:ViewC];
    viewE.backgroundColor = [UIColor blackColor];
    viewE.alpha = 0.4;
    
//    将viewB置顶
    [ViewA bringSubviewToFront:ViewB];
//    将ViewC置底
    [ViewA sendSubviewToBack:ViewC];
    
    
//    给ViewA添加点击事件
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    
    [ViewA addGestureRecognizer:tap];

    return YES;
}

-(void)tapAction:(UIGestureRecognizer *)tap
{
    NSLog(@"%s",__func__);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
