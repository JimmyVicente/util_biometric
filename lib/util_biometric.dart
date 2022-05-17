import 'dart:async';

import 'package:flutter/services.dart';

class UtilBiometric {
  static const MethodChannel _channel = MethodChannel('util_biometric');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> get isInvalidateBiometrics async {
    bool? result = await _channel.invokeMethod('isInvalidateBiometrics');
    return result ?? false;
  }

  static Future<void> get setInvalidateBiometrics async {
    bool? result = await _channel.invokeMethod('setInvalidateBiometrics');
  }
}
