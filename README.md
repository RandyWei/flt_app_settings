# flt_app_settings

跳转设置Flutter插件

## 安装

```
//导入方式
dependencies:
  flt_app_settings:
    git:
      url: git://github.com/RandyWei/flt_app_settings.git
```

```
导入文件
import 'package:flt_app_settings/flt_app_settings.dart';
```

## 示例
```dart
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

```
