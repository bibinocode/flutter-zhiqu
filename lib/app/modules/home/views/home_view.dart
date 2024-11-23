import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../i18n/language_controller.dart';
import '../../../utils/screen_util.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home'.tr,
          style: TextStyle(fontSize: SizeUtil.sp(18)),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'zh_CN':
                  LanguageController.to.changeLanguage('zh', 'CN');
                  break;
                case 'en_US':
                  LanguageController.to.changeLanguage('en', 'US');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'zh_CN',
                  child: Text(
                    '中文',
                    style: TextStyle(fontSize: SizeUtil.sp(14)),
                  ),
                ),
                PopupMenuItem(
                  value: 'en_US',
                  child: Text(
                    'English',
                    style: TextStyle(fontSize: SizeUtil.sp(14)),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: SizeUtil.paddingAll(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: SizeUtil.w(200),
                height: SizeUtil.h(100),
                margin: SizeUtil.marginAll(16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(SizeUtil.r(8)),
                ),
                child: Center(
                  child: Obx(() => Text(
                        'counter'.trParams({'s': controller.count.toString()}),
                        style: TextStyle(
                          fontSize: SizeUtil.sp(20),
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: SizeUtil.w(56),
        height: SizeUtil.h(56),
        child: FloatingActionButton(
          onPressed: controller.increment,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
