import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// it will provide to image caching and loading from network
final class CustomNetworkImage extends StatelessWidget {
  /// for the CustomNetworkImage
  const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCache = const CustomMemCache(width: 200, height: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  /// image source address
  final String? imageUrl;

  /// when image is not available then it will show empty widget
  final Widget? emptyWidget;

  /// when image is loading then it will show loading widget
  final Widget? loadingWidget;

  /// default value is [CustomMemCache(width: 200, height: 200)]
  final CustomMemCache memCache;

  /// default value is [BoxFit.cover]
  final BoxFit boxFit;

  /// image size
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) return emptyWidget ?? const SizedBox();
    return CachedNetworkImage(
      imageUrl: url,
      memCacheWidth: memCache.width,
      memCacheHeight: memCache.height,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      progressIndicatorBuilder: (context, url, progress) =>
          loadingWidget ??
          const Center(
            child: CircularProgressIndicator(),
          ),
      errorWidget: (context, url, error) => emptyWidget ?? const SizedBox(),
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error $value');
      },
    );
  }
}
