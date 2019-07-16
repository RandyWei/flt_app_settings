import 'dart:async';

import 'package:flutter/services.dart';

class FltAppSettings {
  static const MethodChannel _channel = const MethodChannel('bughub.dev/flt_app_settings');

  static Future<void> openAppSettings() {
    return _channel.invokeMethod("app_settings");
  }

  /// Future async method call to open WIFI settings.
  static Future<void> openWIFISettings() async {
    _channel.invokeMethod('wifi');
  }

  /// Future async method call to open location settings.
  static Future<void> openLocationSettings() async {
    _channel.invokeMethod('location');
  }

  /// Future async method call to open security settings.
  static Future<void> openSecuritySettings() async {
    _channel.invokeMethod('security');
  }
}
