import 'package:flutter/material.dart';

import 'app_colors.dart';

class LightTheme {
  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryLight,
          brightness: Brightness.light,
        ),
        // AppBar 主题
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.backgroundLight,
          foregroundColor: AppColors.textPrimaryLight,
        ),
        // Card 主题
        cardTheme: const CardTheme(
          color: AppColors.cardLight,
          elevation: 1,
        ),
        // 文本主题
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.textPrimaryLight),
          bodyMedium: TextStyle(color: AppColors.textPrimaryLight),
          titleLarge: TextStyle(color: AppColors.textPrimaryLight),
        ),
        // Divider 主题
        dividerTheme: const DividerThemeData(
          color: AppColors.dividerLight,
          thickness: 1,
        ),
        // 输入框主题
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.backgroundLight,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
}
