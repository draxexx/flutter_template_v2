import 'package:envied/envied.dart';
import 'package:flutter_template_v2/product/init/config/app_configuration.dart';

part 'env_prod.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.prod.env',
)
final class EnvProd implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _EnvProd._baseUrl;

  @override
  String get baseUrl => _baseUrl;
}
