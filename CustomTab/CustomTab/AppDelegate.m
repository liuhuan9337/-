//
//  AppDelegate.m
//  CustomTab
//
//  Created by Sea on 16/3/14.
//  Copyright © 2016年 Sea. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomTabBarVC.h"
#import <AVOSCloud/AVOSCloud.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [AVOSCloud setApplicationId:@"y2hn1uNSyG2oFuh1O6KDWKvt-gzGzoHsz" clientKey:@"uS135tVAxwaQjmRJwz3QXHgd"];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    
    
    
    
    //这里给第一个视图添加了导航，也可不添加（这里演示导航的添加）
    
    UIViewController *homeVC = [[UIViewController alloc] init] ;
    
    homeVC.view.backgroundColor = [UIColor redColor];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    
    
    UIViewController *setVC = [[UIViewController alloc] init] ;
    
    setVC.view.backgroundColor = [UIColor blueColor];
    
    UIViewController *shareVC = [[UIViewController alloc] init] ;
    
    shareVC.view.backgroundColor = [UIColor yellowColor];
    
    UIViewController *plusVC = [[UIViewController alloc] init] ;
    
    plusVC.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *playVC = [[UIViewController alloc] init];
    
    playVC.view.backgroundColor = [UIColor orangeColor];
    
    
    
    CustomTabBarVC *tabVC = [[CustomTabBarVC alloc] init] ;
    
    //将视图加到tabVC中
    
    tabVC.viewControllers = [NSArray arrayWithObjects:nav,setVC,shareVC,plusVC,playVC, nil];
    
    self.window.rootViewController = tabVC;
    
    
    [self.window makeKeyAndVisible];
    return YES;
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
