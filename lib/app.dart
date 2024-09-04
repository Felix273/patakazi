import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patakazi/bindings/general_bindings.dart';
import 'package:patakazi/utils/constants/colors.dart';
import 'package:patakazi/utils/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Patakazi',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
