import 'package:flutter/material.dart';
import 'package:flutter_template_v2/product/state/base/base_cubit.dart';
import 'package:flutter_template_v2/product/state/view_model/product_state.dart';

final class ProductViewModel extends BaseCubit<ProductState> {
  ProductViewModel() : super(const ProductState());

  /// Change theme mode
  /// [themeMode] is [ThemeMode.light] or [ThemeMode.dark]
  void changeThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
