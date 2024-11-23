import 'package:get/get.dart';
import 'translations/en_US.dart';
import 'translations/zh_CN.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'zh_CN': zhCN,
      };
}
