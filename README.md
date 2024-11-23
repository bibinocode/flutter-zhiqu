# 知趣 (ZhiQu)

## 项目简介
知趣是一个基于 Flutter 开发的移动应用程序，采用 GetX 状态管理框架，支持国际化、主题切换和屏幕适配等功能。该应用旨在提供一个现代化、用户友好的移动端体验。

## 功能特性
- 支持中英文国际化切换
- Material 3 设计风格
- 自适应深色/浅色主题
- 响应式屏幕适配
- 状态管理与路由管理
- 本地数据持久化存储
- 自动化依赖注入

## 技术栈
- Flutter SDK: ^3.5.3
- GetX: ^4.6.6 (状态管理、路由管理、依赖注入)
- get_storage: ^2.1.1 (本地存储)
- flutter_screenutil: ^5.9.0 (屏幕适配)

## 项目结构
```
zhiqu
  lib/
  ├── app/
  │ ├── data/ # 数据层
  │ │ ├── models/ # 数据模型
  │ │ ├── providers/ # 数据提供者
  │ │ └── services/ # 服务类
  │ ├── modules/ # 功能模块
  │ │ ├── home/ # 首页模块
  │ │ └── settings/ # 设置模块
  │ ├── routes/ # 路由配置
  │ └── themes/ # 主题配置
  ├── generated/ # 国际化生成文件
  ├── lang/ # 语言文件
  └── main.dart # 入口文件
```


## 主要 Flutter 组件
1. 页面组件
   - Scaffold：页面骨架
   - AppBar：顶部导航栏
   - BottomNavigationBar：底部导航栏
   - ListView：列表视图
   - GridView：网格视图

2. 基础组件
   - Container：容器组件
   - Row/Column：行列布局
   - Stack：层叠布局
   - Text：文本显示
   - Image：图片显示

3. 交互组件
   - GestureDetector：手势检测
   - InkWell：水波纹点击效果
   - Button 系列组件

## 开发文档

### 1. 环境配置
- Flutter SDK 安装与配置
- Android Studio / VS Code 开发环境设置
- 必要的依赖包安装

### 2. 项目初始化
```bash
flutter create zhiqu
```

#### 2.1 安装依赖
```bash
flutter pub add get
flutter pub add get_storage
flutter pub add flutter_screenutil
```


### 3. GetX 使用指南
- 状态管理
  - 使用 GetxController 管理业务逻辑
  - 使用 Obx 实现响应式状态更新
  
- 路由管理
  - 使用 GetPage 定义路由
  - 使用 Get.to()、Get.back() 等进行导航

- 依赖注入
  - 使用 Get.put() 注入控制器
  - 使用 Get.find() 获取控制器实例

### 4. 国际化实现
- 在 lang/ 目录下创建语言文件
- 使用 get_cli 生成国际化代码
- 通过 Get.updateLocale() 切换语言

### 5. 主题配置
- 定义浅色/深色主题
- 使用 ThemeData 配置主题样式
- 通过 Get.changeTheme() 切换主题

### 6. 屏幕适配
- 使用 ScreenUtil 进行屏幕适配
- 统一使用 .w、.h、.sp 等单位
- 适配不同尺寸设备

## 贡献指南
1. Fork 本仓库
2. 创建特性分支
3. 提交代码
4. 创建 Pull Request

## 许可证
本项目采用 MIT 许可证