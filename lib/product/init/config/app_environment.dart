import 'package:flutter/foundation.dart';
import 'package:flutter_template_v2/product/init/config/app_configuration.dart';
import 'package:flutter_template_v2/product/init/config/env_dev.dart';
import 'package:flutter_template_v2/product/init/config/env_prod.dart';

/// application environment manager class
final class AppEnvironment {
  /// setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  /// general application environment setup
  AppEnvironment.general() {
    _config = kDebugMode ? EnvDev() : EnvProd();
  }

  static late final AppConfiguration _config;

  /// network base url
  static String get baseUrl => _config.baseUrl;
}
