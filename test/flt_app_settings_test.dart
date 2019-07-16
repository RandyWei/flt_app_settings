import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flt_app_settings/flt_app_settings.dart';

void main() {
  const MethodChannel channel = MethodChannel('flt_app_settings');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FltAppSettings.platformVersion, '42');
  });
}
