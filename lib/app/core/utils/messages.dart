import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          'hello': '你好',
          'home': '首页',
          'settings': '设置',
          'counter': '计数器: %s',
        },
        'en_US': {
          'hello': 'Hello',
          'home': 'Home',
          'settings': 'Settings',
          'counter': 'Counter: %s',
        },
      };
}
