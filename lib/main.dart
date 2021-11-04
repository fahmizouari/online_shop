import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_shop/app/utils/colors.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Online Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: generateMaterialColorFromColor(white),
        primaryColor: generateMaterialColorFromColor(orange),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: generateMaterialColorFromColor(orange),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0.0,
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
