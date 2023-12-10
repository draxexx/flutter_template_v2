import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

/// application environment manager class
final class AppEnvironment {
  /// setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  /// general application environment setup
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _config;

  /// network base url
  static String get baseUrl => _config.baseUrl;
}
