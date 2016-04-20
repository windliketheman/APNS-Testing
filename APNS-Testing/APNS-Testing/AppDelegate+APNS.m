//
//  AppDelegate+APNS.m
//  APNS-Testing
//
//  Created by jia on 16/4/19.
//  Copyright © 2016年 jia. All rights reserved.
//

#import "AppDelegate+APNS.h"

@implementation AppDelegate (APNS)

- (void)initNotifications
{
    // 注册推送
    [NSThread detachNewThreadSelector:@selector(registerForNotificationTypes)
                             toTarget:self
                           withObject:nil];
}

- (void)registerForNotificationTypes
{
    @autoreleasepool
    {
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound |
                                                                                             UIUserNotificationTypeAlert |
                                                                                             UIUserNotificationTypeBadge)
                                                                                 categories:nil];
        [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
        [[UIApplication sharedApplication] registerForRemoteNotifications];
    }
}

@end
