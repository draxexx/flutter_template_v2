import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_v2/product/init/application_initialize.dart';
import 'package:flutter_template_v2/product/init/navigation/app_router.dart';
import 'package:flutter_template_v2/product/init/product_localization.dart';
import 'package:flutter_template_v2/product/init/theme/custom_dark_theme.dart';
import 'package:flutter_template_v2/product/init/theme/custom_light_theme.dart';
import 'package:widgets/widgets.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  await ApplicationInitialize().make();
  runApp(
    DevicePreview(
      builder: (context) => ProductLocalization(child: const _MyApp()),
    ),
  );
}

/// Main App
final class _MyApp extends StatelessWidget {
  /// Main App
  const _MyApp();
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      builder: CustomResponsive.build,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: ThemeMode.dark,
    );
  }
}
