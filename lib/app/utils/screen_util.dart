import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 屏幕适配工具类
class SizeUtil {
  /// 设置宽度
  static double w(double width) => width.w;

  /// 设置高度
  static double h(double height) => height.h;

  /// 设置半径
  static double r(double radius) => radius.r;

  /// 设置字体大小
  static double sp(double fontSize) => fontSize.sp;

  /// 设置自适应宽度
  static double sw(double width) => width.sw;

  /// 设置自适应高度
  static double sh(double height) => height.sh;

  /// 获取屏幕宽度
  static double get screenWidth => 1.sw;

  /// 获取屏幕高度
  static double get screenHeight => 1.sh;

  /// 获取状态栏高度
  static double get statusBarHeight => ScreenUtil().statusBarHeight;

  /// 获取底部安全区域高度
  static double get bottomBarHeight => ScreenUtil().bottomBarHeight;

  /// 设置方形大小（宽高相等）
  static double square(double size) => size.r;

  /// 设置内边距
  static EdgeInsetsGeometry padding({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return EdgeInsets.only(
      left: w(left),
      top: h(top),
      right: w(right),
      bottom: h(bottom),
    );
  }

  /// 设置所有方向相等的内边距
  static EdgeInsetsGeometry paddingAll(double padding) {
    return EdgeInsets.all(w(padding));
  }

  /// 设置水平和垂直内边距
  static EdgeInsetsGeometry paddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return EdgeInsets.symmetric(
      horizontal: w(horizontal),
      vertical: h(vertical),
    );
  }

  /// 设置边距
  static EdgeInsetsGeometry margin({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return EdgeInsets.only(
      left: w(left),
      top: h(top),
      right: w(right),
      bottom: h(bottom),
    );
  }

  /// 设置所有方向相等的边距
  static EdgeInsetsGeometry marginAll(double margin) {
    return EdgeInsets.all(w(margin));
  }

  /// 设置水平和垂直边距
  static EdgeInsetsGeometry marginSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return EdgeInsets.symmetric(
      horizontal: w(horizontal),
      vertical: h(vertical),
    );
  }
}
