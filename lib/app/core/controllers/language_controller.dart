import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  static LanguageController get to => Get.find();

  final locale = const Locale('zh', 'CN').obs;

  void changeLanguage(String languageCode, String countryCode) {
    final locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
    this.locale.value = locale;
  }
}
