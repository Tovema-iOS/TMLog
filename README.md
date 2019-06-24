# TMLogger

An open source log system for oc.

## Requirements

iOS8, ARC

## Installation

TMLogger is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/Tovema-iOS/Specs.git'
pod "TMLogger", '~> 1.0'
```

## Usage

``` Objective-C
#import <TMLogger/TMLogger.h>
```

- Normal log

``` Objective-C
//测试日志
for (int i=0; i<10; i++) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^(void) {
        for (int i=0; i<100; i++) {
            MLOG_I(@"info");
            MLOG_E(@"error");
            MLOG_W(@"worring");
            MLOG_D(@"debug");
        }
    });
}
```

## Author

CodingPub, lxb_0605@qq.com

## License

TMLogger is available under the MIT license. See the LICENSE file for more info.
