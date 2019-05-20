#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import <AVFoundation/AVFoundation.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  FlutterViewController* controller = (FlutterViewController*)self.window.rootViewController;

  FlutterMethodChannel* batteryChannel = [FlutterMethodChannel methodChannelWithName:@"samples.flutter.io/volume" binaryMessenger:controller];
  [batteryChannel setMethodCallHandler:^(FlutterMethodCall* call, FlutterResult result) {
    if ([@"getVolume" isEqualToString:call.method]) {
      int volume = [self getVolume];
      result(@(volume));
    } else {
      result(FlutterMethodNotImplemented);
    }
  }];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (int)getVolume {
  AVAudioSession *audioSession = [AVAudioSession sharedInstance];
  CGFloat volume = audioSession.outputVolume; 
  return ((int)(volume));
}

@end
