//
//  AppDelegate.m
//  HBJDSdkDemo
//
//  Created by Mac on 2020/10/22.
//  Copyright © 2020 yanruyu. All rights reserved.
//

#import "AppDelegate.h"
#import <JDSDK/KeplerApiManager.h>
//------------------------京东接入------------------------//
#define bJDAppKey                @""
#define bJDAppSecret             @""
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[KeplerApiManager sharedKPService]asyncInitSdk:bJDAppKey secretKey:bJDAppSecret sucessCallback:^{
        NSLog(@"京东注册成功");
    } failedCallback:^(NSError *error) {
        NSLog(@"京东注册失败");
    }];
    return YES;
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
