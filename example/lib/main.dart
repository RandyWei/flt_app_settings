import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flt_app_settings/flt_app_settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  FltAppSettings.openAppSettings();
                },
                child: Text("打开设置"),
              ),
              RaisedButton(
                onPressed: () {
                  FltAppSettings.openLocationSettings();
                },
                child: Text("openLocationSettings"),
              ),
              RaisedButton(
                onPressed: () {
                  FltAppSettings.openWIFISettings();
                },
                child: Text("openWIFISettings"),
              ),
              RaisedButton(
                onPressed: () {
                  FltAppSettings.openSecuritySettings();
                },
                child: Text("openSecuritySettings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
