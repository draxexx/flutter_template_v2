import 'package:envied/envied.dart';
import 'package:flutter_template_v2/product/init/config/app_configuration.dart';

part 'env_dev.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.dev.env',
)
final class EnvDev implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _EnvDev._baseUrl;

  @override
  String get baseUrl => _baseUrl;
}
