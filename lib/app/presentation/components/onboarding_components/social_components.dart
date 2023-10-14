import 'package:chatbox_app/core/global/theme/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialComponents extends StatelessWidget {
  final String svgIcon;
  const SocialComponents({super.key, required this.svgIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.white)),
      child: SvgPicture.asset(
        svgIcon,
        width: 8.sW(context),
      ),
    );
  }
}
