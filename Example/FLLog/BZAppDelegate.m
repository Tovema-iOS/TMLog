//
//  BZAppDelegate.m
//  BZLog
//
//  Created by Orion777 on 09/22/2015.
//  Copyright (c) 2015 Orion777. All rights reserved.
//

#import "BZAppDelegate.h"
#import <TMLog/TMLog.h>

@implementation BZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
//    [BZLogger setLogLevel:DDLogLevelWarning];
//    [BZLogger setShowFileInfo:YES];
    
    //测试日志
//    for (int i=0; i<10; i++)
    {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^(void) {
            for (int i=0; i<2; i++) {
                MLOG_I(@"I N F O");
                MLOG_E(@"E R R O R");
                MLOG_W(@"W A R I N G");
                MLOG_D(@"D E B U G");
            }
        });
        
    }

    return YES;
}

@end
