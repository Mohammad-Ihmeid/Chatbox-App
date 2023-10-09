import 'package:flutter/material.dart';

@immutable
class Responsive {
  final BuildContext context;
  final double deviceHeight;
  final double deviceWidth;

  static Responsive? _instance;

  Responsive._({required this.context})
      : deviceHeight = MediaQuery.sizeOf(context).height,
        deviceWidth = MediaQuery.sizeOf(context).width;

  factory Responsive.getInstance({
    required BuildContext context,
  }) {
    _instance ??= Responsive._(
      context: context,
    );
    return _instance!;
  }

  // general size
  Size get screenSize => MediaQuery.sizeOf(context);
  EdgeInsets get screenPadding => MediaQuery.paddingOf(context);

  // responsive width
  double setWidth({required double width}) {
    if (deviceWidth == 0 || screenSize.height == 0) return 0.0;
    return (deviceWidth * (width / 100));
  }

  // responsive height
  double setHeight({required double height}) {
    if (deviceHeight == 0 || screenSize.height == 0) return 0.0;
    return (deviceHeight * (height / 100));
  }
}

// Extension
extension ExtensionOnWidth on num {
  // Width
  double sW(BuildContext context) => Responsive.getInstance(
        context: context,
      ).setWidth(
        width: toDouble(),
      );
}

extension ExtensionOnHeight on num {
  // Height
  double sH(BuildContext context) => Responsive.getInstance(
        context: context,
      ).setHeight(
        height: toDouble(),
      );
}
