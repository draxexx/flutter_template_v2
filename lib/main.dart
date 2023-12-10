import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_v2/feature/home/view/home_view.dart';
import 'package:flutter_template_v2/product/init/application_initialize.dart';
import 'package:flutter_template_v2/product/init/product_localization.dart';
import 'package:flutter_template_v2/product/init/theme/custom_dark_theme.dart';
import 'package:flutter_template_v2/product/init/theme/custom_light_theme.dart';

void main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const _MyApp()));
}

/// Main App
class _MyApp extends StatelessWidget {
  /// Main App
  const _MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: ThemeMode.dark,
      home: const HomeView(),
    );
  }
}
