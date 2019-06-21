//
//  FLLogFormatter.m
//  FLLogger
//
//  Created by Xiaobin Lin on 2018/8/10.
//

#import "FLLogFormatter.h"

@implementation FLLogFormatter

- (instancetype)initWithShowFileInfo:(BOOL)showFileInfo
{
    self = [super init];
    if (self) {
        _showFileInfo = showFileInfo;
        
        _dateFormatter = [[NSDateFormatter alloc] init];
        [_dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4]; // 10.4+ style
        [_dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss:SSS"];
    }
    return self;
}

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *logLevel;
    switch (logMessage->_flag) {
        case DDLogFlagError    : logLevel = @"E"; break;
        case DDLogFlagWarning  : logLevel = @"W"; break;
        case DDLogFlagInfo     : logLevel = @"I"; break;
        case DDLogFlagDebug    : logLevel = @"D"; break;
        default                : logLevel = @"V"; break;
    }
    
    NSString *fileInfo = self.showFileInfo ? [NSString stringWithFormat:@"%@ %@ (%@): \n", logMessage.fileName, logMessage.function, @(logMessage.line)] : @"";
    NSString *logTime = [_dateFormatter stringFromDate:logMessage.timestamp];
    
    return [NSString stringWithFormat:@"%@%@ | %@: %@", fileInfo, logLevel, logTime, logMessage->_message];
}

@end
