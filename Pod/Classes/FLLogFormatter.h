//
//  FLLogFormatter.h
//  FLLogger
//
//  Created by Xiaobin Lin on 2018/8/10.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>

@interface FLLogFormatter : NSObject <DDLogFormatter> {
    NSDateFormatter *_dateFormatter;
}

@property (nonatomic, assign) BOOL showFileInfo;

- (instancetype)initWithShowFileInfo:(BOOL)showFileInfo;

@end
