import 'package:chatbox_app/core/global/theme/app_color/app_color_light.dart';
import 'package:chatbox_app/core/global/theme/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialWidget extends StatelessWidget {
  final String svgIcon;
  final Color circularColor;
  const SocialWidget({
    super.key,
    required this.svgIcon,
    this.circularColor = AppColorsLight.colorWhite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: circularColor)),
      child: SvgPicture.asset(
        svgIcon,
        width: 8.sW(context),
        height: 6.sH(context),
      ),
    );
  }
}
