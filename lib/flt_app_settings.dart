import 'dart:async';

import 'package:flutter/services.dart';

class FltAppSettings {
  static const MethodChannel _channel = const MethodChannel('bughub.dev/flt_app_settings');

  static Future<void> openSetting() {
    return _channel.invokeMethod("app_settings");
  }
}
