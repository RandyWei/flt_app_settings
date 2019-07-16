#import "FltAppSettingsPlugin.h"

@implementation FltAppSettingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"bughub.dev/flt_app_settings"
            binaryMessenger:[registrar messenger]];
  FltAppSettingsPlugin* instance = [[FltAppSettingsPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    NSURL *url = [NSURL URLWithString: UIApplicationOpenSettingsURLString];
    if ([UIApplication.sharedApplication canOpenURL:url]) {
        [UIApplication.sharedApplication openURL: url];
        result(nil);
    }else{
        result(@"无法打开设置");
    }
}

@end
