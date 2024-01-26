import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_template_v2/product/init/config/app_environment.dart';
import 'package:vexana/vexana.dart';

/// product network manager
final class ProductNetworkManager extends NetworkManager<EmptyModel> {
  /// product network manager constructor
  ProductNetworkManager.base()
      : super(
          options: BaseOptions(
            baseUrl: AppEnvironment.baseUrl,
          ),
        );

  /// error handler
  /// [onErrorStatus] is error status code [HttpStatus]
  void listenErrorState({required ValueChanged<int> onErrorStatus}) {
    interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          onErrorStatus(error.response?.statusCode ?? HttpStatus.notFound);
          return handler.next(error);
        },
      ),
    );
  }
}
