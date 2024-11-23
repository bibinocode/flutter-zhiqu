import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageController extends GetxController {
  static LanguageController get to => Get.find();

  final _storage = GetStorage();
  final String _storageKey = 'locale';

  final locale = const Locale('zh', 'CN').obs;

  @override
  void onInit() {
    super.onInit();
    // 从存储中读取上次的语言设置
    final String? storedLocale = _storage.read(_storageKey);
    if (storedLocale != null) {
      final parts = storedLocale.split('_');
      if (parts.length == 2) {
        locale.value = Locale(parts[0], parts[1]);
      }
    }
  }

  void changeLanguage(String languageCode, String countryCode) {
    final locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
    this.locale.value = locale;
    // 保存语言设置
    _storage.write(_storageKey, '${languageCode}_$countryCode');
  }
}
