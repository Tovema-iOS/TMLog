//
//  FLLogger.m
//  BZLog
//
//  Created by Xiaobin Lin on 2018/8/10.
//

#import "TMLogger.h"
#import "FLLogFormatter.h"

@implementation TMLogger

+ (void)load
{
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    DDFileLogger *fileLogger = [[DDFileLogger alloc] init]; // File Logger
    fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    fileLogger.logFormatter =  [[FLLogFormatter alloc] initWithShowFileInfo:YES];
    
    [DDLog addLogger:fileLogger];
    
    [DDTTYLogger sharedInstance].logFormatter =  [[FLLogFormatter alloc] initWithShowFileInfo:NO];
    
    MLOG(@"log file path = %@", fileLogger.logFileManager.logsDirectory);
}

+ (void)setLogLevel:(DDLogLevel)level
{
    ddLogLevel = level;
}

/**
 是否显示打印日志的语句信息
 */
+ (void)setShowFileInfo:(BOOL)show {
    
    [DDTTYLogger sharedInstance].logFormatter =  [[FLLogFormatter alloc] initWithShowFileInfo:show];
    
}

@end
