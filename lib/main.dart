import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/core/theme/app_theme.dart';
import 'app/i18n/language_controller.dart';
import 'app/i18n/strings.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  Get.put(LanguageController());
  runApp(const MyApp());
}

Size get designSize {
  // 获取设备的物理尺寸和像素比
  final firstView = WidgetsBinding.instance.platformDispatcher.views.first;
  // 计算设备的逻辑短边（实际可用宽度）
  final logicalShortestSide = firstView.physicalSize.shortestSide / firstView.devicePixelRatio;

  // 计算设备的逻辑长边（实际可用高度）
  final logicalLongestSide = firstView.physicalSize.longestSide / firstView.devicePixelRatio;
  // 使用0.95的缩放因子来稍微缩小参考尺寸
  const scaleFactor = 0.95;
  return Size(logicalShortestSide * scaleFactor, logicalLongestSide * scaleFactor);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Application',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
          translations: AppTranslation(),
          locale: LanguageController.to.locale.value,
          fallbackLocale: const Locale('en', 'US'),
        );
      },
    );
  }
}
