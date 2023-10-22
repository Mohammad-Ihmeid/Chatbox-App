import 'package:chatbox_app/core/global/theme/app_color/app_color_light.dart';
import 'package:chatbox_app/core/global/theme/responsive.dart';
import 'package:flutter/material.dart';

class ORWidget extends StatelessWidget {
  final Color oRColor;
  const ORWidget({
    super.key,
    this.oRColor = AppColorsLight.titleSmallColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      const Expanded(
        child: Divider(
          color: AppColorsLight.dividerColor,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "OR",
          style: TextStyle(
            fontSize: 20.sF(context),
            color: oRColor,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      const Expanded(child: Divider(color: AppColorsLight.dividerColor))
    ]);
  }
}
