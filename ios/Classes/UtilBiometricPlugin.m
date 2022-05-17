#import "UtilBiometricPlugin.h"
#if __has_include(<util_biometric/util_biometric-Swift.h>)
#import <util_biometric/util_biometric-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "util_biometric-Swift.h"
#endif

@implementation UtilBiometricPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUtilBiometricPlugin registerWithRegistrar:registrar];
}
@end
