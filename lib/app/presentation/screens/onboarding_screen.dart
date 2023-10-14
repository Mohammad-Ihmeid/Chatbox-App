import 'package:chatbox_app/app/presentation/components/onboarding_components/social_components.dart';
import 'package:chatbox_app/core/global/theme/app_assets.dart';
import 'package:chatbox_app/core/global/theme/app_color/app_color_light.dart';
import 'package:chatbox_app/core/global/theme/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              ImagesAssets.onboardingBackground,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 50.sTP(context),
              left: 25.sLP(context),
              right: 25.sRP(context),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    IconsAssets.logoSmall,
                    width: 25.sW(context),
                  ),
                  SizedBox(
                    height: 1.sH(context),
                  ),
                  Text(
                    "Connect friends",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "easily & quickly",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 3.sH(context)),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 30.sRP(context),
                    ),
                    child: Text(
                        "Our chat app is the perfect way to stay connected with friends and family.",
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                  SizedBox(height: 3.sH(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SocialComponents(svgIcon: IconsAssets.facebookIcon),
                      SizedBox(width: 5.sW(context)),
                      const SocialComponents(svgIcon: IconsAssets.googleIcon),
                      SizedBox(width: 5.sW(context)),
                      const SocialComponents(svgIcon: IconsAssets.appleIcon)
                    ],
                  ),
                  SizedBox(
                    height: 3.sH(context),
                  ),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    const Expanded(
                      child: Divider(
                        color: AppColorsLight.dividerColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR",
                          style: Theme.of(context).textTheme.titleSmall),
                    ),
                    const Expanded(
                        child: Divider(color: AppColorsLight.dividerColor))
                  ]),
                  SizedBox(height: 3.sH(context)),
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 12),
                      child: Center(
                        child: Text(
                          "Sign up with mail",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.sH(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Existing account?",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Log in",
                          style: TextStyle(color: AppColorsLight.colorWhite),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
