import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

/// network image with lottie loading
class ProjectNetworkImage extends StatelessWidget {
  /// network image with lottie loading
  const ProjectNetworkImage({
    required this.url,
    super.key,
  });

  /// network image source address
  final String url;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lottie.animZombie.lottie(package: 'gen'),
    );
  }
}
