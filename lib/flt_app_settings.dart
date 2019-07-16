import 'dart:async';

import 'package:flutter/services.dart';

class FltAppSettings {
  static const MethodChannel _channel =
      const MethodChannel('flt_app_settings');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
